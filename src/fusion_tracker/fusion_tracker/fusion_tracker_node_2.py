import rclpy
from rclpy.node import Node
from sensor_msgs.msg import PointCloud2, Image, CameraInfo
import sensor_msgs_py.point_cloud2 as pc2
from cv_bridge import CvBridge
import numpy as np
import torch

from mmengine.config import Config
from mmdet3d.registry import MODELS
from mmdet3d.apis import inference_multi_modality_detector

# 触发所有 mmdet3d 模块注册，包括 Det3DDataPreprocessor
import mmdet3d.models
from mmdet3d.models.data_preprocessors import Det3DDataPreprocessor
import mmdet3d.datasets.transforms
import mmdet3d.datasets.transforms.loading




class FusionTrackerNode(Node):
    def __init__(self):
        super().__init__('fusion_tracker')

        # ===== 模型配置和权重路径 =====
        cfg_path = '/workspace/ros2_yolo/src/mmdetection3d/configs/mvxnet/mvxnet_fpn_dv_second_secfpn_8xb2-80e_kitti-3d-3class.py'
        ckpt_path = '/workspace/ros2_yolo/src/fusion_tracker/models/mvxnet_fpn_dv_second_secfpn_8xb2-80e_kitti-3d-3class-8963258a.pth'

        # ===== 加载配置并构建模型 =====
        cfg = Config.fromfile(cfg_path)
        self.model = MODELS.build(cfg.model)
        self.model.cfg = cfg   # 手动挂载 cfg 属性，关键一步！

        # ===== 加载权重 =====
        checkpoint = torch.load(ckpt_path, map_location='cuda:0')
        self.model.load_state_dict(checkpoint['state_dict'], strict=False)
        self.model.to('cuda:0')
        self.model.eval()

        self.bridge = CvBridge()
        self.latest_image = None
        self.camera_intrinsics = None

        # ===== 订阅话题 =====
        self.sub_img = self.create_subscription(
            Image, '/kitti/camera_color_right/image_raw', self.image_callback, 10)
        self.sub_pcd = self.create_subscription(
            PointCloud2, '/kitti/velo/pointcloud', self.pcd_callback, 10)
        self.sub_caminfo = self.create_subscription(
            CameraInfo, '/kitti/camera_gray_left/camera_info', self.caminfo_callback, 10)

        # ===== 发布话题 =====
        self.pub_img = self.create_publisher(Image, '/det3d_image', 10)

        self.get_logger().info("FusionTrackerNode 已初始化，模型和权重加载完成，等待话题数据...")

    def image_callback(self, msg):
        self.latest_image = self.bridge.imgmsg_to_cv2(msg, desired_encoding="bgr8")

    def caminfo_callback(self, msg):
        K = np.array(msg.k).reshape(3, 3)
        D = np.array(msg.d)
        P = np.array(msg.p).reshape(3, 4)
        self.camera_intrinsics = {'K': K, 'D': D, 'P': P}
        self.get_logger().info("CameraInfo 已更新")

    def pcd_callback(self, msg):
        if self.latest_image is None or self.camera_intrinsics is None:
            self.get_logger().info("等待图像和相机标定信息...")
            return

        # 动态检查点云字段，兼容 "i" 和 "intensity"
        available_fields = [f.name for f in msg.fields]
        field_names = ["x", "y", "z"]
        if "intensity" in available_fields:
            field_names.append("intensity")
        elif "i" in available_fields:
            field_names.append("i")

        points_list = list(pc2.read_points(msg, field_names=field_names, skip_nans=True))
        points = np.array(points_list)

        # ===== 正确调用推理 API =====
        results = inference_multi_modality_detector(
            self.model,
            points,
            [self.latest_image],
            ann_file=None
        )

        if 'visualization' in results:
            vis_img = results['visualization'][0]
            result_msg = self.bridge.cv2_to_imgmsg(vis_img, encoding="bgr8")
            self.pub_img.publish(result_msg)
            self.get_logger().info("已发布检测结果图像")


def main(args=None):
    rclpy.init(args=args)
    node = FusionTrackerNode()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()


if __name__ == '__main__':
    main()
