import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Image, PointCloud2
from vision_msgs.msg import Detection3DArray, Detection3D, ObjectHypothesisWithPose
from visualization_msgs.msg import MarkerArray, Marker
import numpy as np, math, sys

# ===== ROS 消息转换工具 =====
from cv_bridge import CvBridge
import sensor_msgs_py.point_cloud2 as pc2

# ===== 导入 AB3DMOT =====
sys.path.append("/workspace/ros2_yolo/src/AB3DMOT-master")
from AB3DMOT_libs.utils import Config as MOTConfig
from AB3DMOT_libs.model import AB3DMOT

# ===== 导入 MMDetection3D =====
sys.path.append("/workspace/ros2_yolo/src/mmdetection3d")
from mmengine.config import Config
from mmengine.dataset import Compose
from mmdet3d.apis import init_model

from mmengine.registry import TRANSFORMS
from copy import deepcopy

import warnings
warnings.filterwarnings("ignore", category=UserWarning)

CLASS_MAP = {"Car": "1", "Pedestrian": "2", "Cyclist": "3"}
def get_class_id(cat: str) -> str:
    return CLASS_MAP.get(cat, "0")


class FusionTrackerNode(Node):
    def __init__(self):
        super().__init__('fusion_tracker')

        # 声明参数
        self.declare_parameter("cfg_path", "/workspace/ros2_yolo/src/mmdetection3d/configs/mvxnet/mvxnet_fpn_dv_second_secfpn_8xb2-80e_kitti-3d-3class.py")
        self.declare_parameter("ckpt_path", "/workspace/ros2_yolo/work_dirs/mvxnet/latest.pth")
        self.declare_parameter("tracker_cfg", "/workspace/ros2_yolo/src/AB3DMOT-master/configs/kitti_track_config.txt")
        self.declare_parameter("tracker_cat", "Car")
        self.declare_parameter("image_topic", "/kitti/camera_color_left/image_raw")
        self.declare_parameter("lidar_topic", "/kitti/velo/pointcloud")

        cfg_path = self.get_parameter("cfg_path").value
        ckpt_path = self.get_parameter("ckpt_path").value
        tracker_cfg = self.get_parameter("tracker_cfg").value
        cat = self.get_parameter("tracker_cat").value
        image_topic = self.get_parameter("image_topic").value
        lidar_topic = self.get_parameter("lidar_topic").value

        # 初始化检测模型配置
        cfg = Config.fromfile(cfg_path)

        # ===== 在 init_model 之前拦截 TRANSFORMS.build =====
        _original_build = TRANSFORMS.build

        def patched_build(cfg, *args, **kwargs):
            if isinstance(cfg, dict):
                cfg2 = deepcopy(cfg)
                t = cfg2.get('type')

                # 替换点云加载器
                if t == 'LoadPointsFromFile':
                    cfg2 = dict(
                        type='LoadPointsFromDict',
                        keys=['lidar_points'],
                        coord_type='LIDAR',
                        load_dim=3,
                        use_dim=[0, 1, 2]
                    )
                # 替换图像加载器
                elif t == 'LoadImageFromFile':
                    cfg2 = dict(type='LoadImageFromNDArray')
                # 移除错误的 keys 参数
                elif t != 'LoadPointsFromDict' and 'keys' in cfg2:
                    cfg2.pop('keys')

                # 递归处理 MultiScaleFlipAug3D 内部的 transforms
                if cfg2.get('type') == 'MultiScaleFlipAug3D' and 'transforms' in cfg2:
                    fixed = []
                    for sub in cfg2['transforms']:
                        if isinstance(sub, dict) and sub.get('type') == 'LoadPointsFromFile':
                            sub = dict(
                                type='LoadPointsFromDict',
                                keys=['lidar_points'],
                                coord_type='LIDAR',
                                load_dim=3,
                                use_dim=[0, 1, 2]
                            )
                        elif isinstance(sub, dict) and sub.get('type') == 'LoadImageFromFile':
                            sub = dict(type='LoadImageFromNDArray')
                        elif isinstance(sub, dict) and sub.get('type') != 'LoadPointsFromDict' and 'keys' in sub:
                            sub = dict(**sub)
                            sub.pop('keys', None)
                        fixed.append(sub)
                    cfg2['transforms'] = fixed

                return _original_build(cfg2, *args, **kwargs)

            return _original_build(cfg, *args, **kwargs)

        TRANSFORMS.build = patched_build
        self.get_logger().info("已启用 TRANSFORMS.build 拦截：强制替换 LoadPointsFromFile/LoadImageFromFile")

        # 初始化模型
        self.model = init_model(cfg, ckpt_path, device='cuda:0')
        self.test_pipeline = Compose(cfg.test_dataloader.dataset['pipeline'])


        # 初始化跟踪器
        mot_cfg, _ = MOTConfig(tracker_cfg)
        self.tracker = AB3DMOT(mot_cfg, cat, log=None)

        # 订阅图像和点云
        self.sub_image = self.create_subscription(Image, image_topic, self.image_callback, 10)
        self.sub_lidar = self.create_subscription(PointCloud2, lidar_topic, self.lidar_callback, 10)

        # 发布器
        self.pub_tracks = self.create_publisher(Detection3DArray, "/fusion/tracks", 10)
        self.pub_markers = self.create_publisher(MarkerArray, "/fusion/markers", 10)

        # 缓存
        self.latest_image = None
        self.latest_lidar = None
        self.frame_id = 0
        self.bridge = CvBridge()

        self.get_logger().info("FusionTrackerNode started, waiting for image and lidar topics...")

    def image_callback(self, msg: Image):
        self.get_logger().info("Received Image message")
        self.latest_image = msg
        self.try_fuse()

    def lidar_callback(self, msg: PointCloud2):
        self.get_logger().info("Received Lidar message")
        self.latest_lidar = msg
        self.try_fuse()

    def try_fuse(self):
        if self.latest_image is None or self.latest_lidar is None:
            return

        try:
            # ===== 图像转换 =====
            cv_image = self.bridge.imgmsg_to_cv2(self.latest_image, desired_encoding='bgr8')

            # ===== 点云转换 =====
            points = np.array(list(pc2.read_points(
                self.latest_lidar, field_names=("x", "y", "z"), skip_nans=True
            )))

            # ===== 打印输入数据情况 =====
            self.get_logger().info(f"[DEBUG] Image shape: {cv_image.shape}, Points shape: {points.shape}")

            # ===== 构造 pipeline 输入 =====
            data = dict(
                img=cv_image,
                lidar_points=points,
                img_fields=['img'],
                pts_fields=['lidar_points']
            )
            self.get_logger().info(f"[DEBUG] Raw data keys: {list(data.keys())}")

            # ===== 执行 pipeline =====
            data = self.test_pipeline(data)
            self.get_logger().info(f"[DEBUG] After pipeline: keys={list(data.keys())}")

            # ===== 模型推理 =====
            preds = self.model.test_step([data])
            det_res = preds[0]

            # ===== 打印检测结果 =====
            boxes = det_res['boxes_3d'].tensor.numpy()
            scores = det_res['scores_3d'].cpu().numpy()
            labels = det_res['labels_3d'].cpu().numpy()
            self.get_logger().info(f"[DEBUG] Detections this frame: {boxes.shape[0]}")

            if boxes.shape[0] > 0:
                for i in range(min(5, boxes.shape[0])):
                    self.get_logger().info(
                        f"[DEBUG] Box {i}: label={labels[i]}, score={scores[i]:.2f}, coords={boxes[i]}"
                    )

            # ===== 转换为 AB3DMOT 输入格式 =====
            dets_list, info_list = [], []
            for i in range(boxes.shape[0]):
                x, y, z, w, l, h, yaw = boxes[i]
                dets_list.append([h, w, l, x, y, z, yaw])
                info_list.append([scores[i], 1, 1, 1, 1, 1, 1])
            dets = np.array(dets_list, dtype=np.float32)
            info = np.array(info_list, dtype=np.float32)

            # 跟踪
            results, _ = self.tracker.track({'dets': dets, 'info': info}, self.frame_id, seq_name="ros2")
            self.frame_id += 1
            tracks = results[0] if len(results) > 0 else np.empty((0, 15))

            # 发布结果（即使为空也发布）
            tracks_msg = Detection3DArray()
            tracks_msg.header = self.latest_lidar.header
            markers = MarkerArray()
            delete_all = Marker()
            delete_all.action = Marker.DELETEALL
            markers.markers.append(delete_all)

            if len(tracks) == 0:
                self.get_logger().info("No tracks this frame, publishing empty Detection3DArray.")
            else:
                for trk in tracks:
                    tid = int(trk[7])
                    det = Detection3D()
                    det.id = str(tid)
                    det.bbox.center.position.x = float(trk[3])
                    det.bbox.center.position.y = float(trk[4])
                    det.bbox.center.position.z = float(trk[5])
                    det.bbox.size.x = float(trk[2])
                    det.bbox.size.y = float(trk[1])
                    det.bbox.size.z = float(trk[0])
                    yaw = float(trk[6])
                    det.bbox.center.orientation.z = math.sin(yaw / 2)
                    det.bbox.center.orientation.w = math.cos(yaw / 2)

                    hypo = ObjectHypothesisWithPose()
                    hypo.hypothesis.class_id = get_class_id("Car")
                    vx, vy, vz = trk[8], trk[9], trk[10]
                    speed = math.sqrt(vx ** 2 + vy ** 2 + vz ** 2)
                    state = "MOV" if speed > 1.8 else "STA"
                    hypo.hypothesis.score = 1.0 if state == "MOV" else 0.0
                    det.results.append(hypo)
                    tracks_msg.detections.append(det)

                    marker = Marker()
                    marker.id = tid
                    marker.type = Marker.TEXT_VIEW_FACING
                    marker.action = Marker.ADD
                    marker.pose.position.x = float(trk[3])
                    marker.pose.position.y = float(trk[4])
                    marker.pose.position.z = float(trk[5]) + 2.0
                    marker.scale.z = 0.5
                    marker.color.a = 1.0
                    marker.color.r = 1.0
                    marker.color.g = 1.0
                    marker.color.b = 1.0
                    marker.text = f"ID={tid} v={speed:.2f} {state}"
                    markers.markers.append(marker)

            self.pub_tracks.publish(tracks_msg)
            self.pub_markers.publish(markers)

        except Exception as e:
            self.get_logger().error(f"Error in try_fuse: {e}")

def main(args=None):
    rclpy.init(args=args)
    node = FusionTrackerNode()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()

if __name__=="__main__":
    main()