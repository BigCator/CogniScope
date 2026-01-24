import rclpy
from rclpy.node import Node
import cv2
import os
import torch
from sensor_msgs.msg import PointCloud2, Image
import sensor_msgs_py.point_cloud2 as pc2
from std_msgs.msg import Bool, ColorRGBA
# 发布边界框消息
from visualization_msgs.msg import MarkerArray, Marker
from geometry_msgs.msg import Pose, Quaternion, Vector3, Point
from builtin_interfaces.msg import Duration
import time
import numpy as np, sys, math
from cv_bridge import CvBridge
from PIL import Image as PILImage
from mmdet3d.apis import init_model, inference_multi_modality_detector 
from mmdet3d.structures.points import get_points_type
# from mmdet3d.core.points import get_points_type
from mmdet3d.structures.bbox_3d.utils import get_box_type
import time

# ===== 导入 MMDetection3D =====
sys.path.append("/workspace/CogniScope/src/AB3DMOT-master")
from AB3DMOT_libs.model import AB3DMOT
from AB3DMOT_libs.utils import Config as MOTConfig
from AB3DMOT_libs.model import AB3DMOT

from copy import deepcopy
from mmengine.dataset import Compose
from mmengine.dataset import pseudo_collate  # 这个你后面还要用

from geometry_msgs.msg import TwistStamped



# DETECTION_COLOR_MAP = {'Car': (255,255,0), 
#                        'Pedestrian': (0, 226, 255), 
#                        'Cyclist': (141, 40, 255)} # color for detection, in format bgr

DETECTION_COLOR_MAP = {
    "car": (255, 0, 0),          # 红
    "truck": (255, 165, 0),      # 橙
    "bus": (255, 215, 0),        # 金
    "pedestrian": (0, 255, 0),   # 绿
    "cyclist": (0, 255, 255),    # 青
    "motor": (0, 128, 255),      # 蓝
    # "unknown": (255, 255, 255),  # 白
}                    

LINES = [[0, 1], [1, 2], [2, 3], [3, 0]] # lower face
LINES+= [[4, 5], [5, 6], [6, 7], [7, 4]] # upper face
LINES+= [[4, 0], [5, 1], [6, 2], [7, 3]] # connect lower face and upper face
LINES+= [[4, 1], [5, 0]] # front face and draw x

class bc:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

class Draw3DBox :
    def __init__(self, box3d_pub, node, marker_frame_id = 'lidar_frame', rate=10):
        self.frame_id = marker_frame_id
        self.lifetime = 1.0/rate
        self.box3d_pub = box3d_pub
        self.node = node  # 保存 Node 对象的引用

    def set_frame_id(self,marker_frame_id):
        self.frame_id = marker_frame_id

    def check_numpy_to_torch(self,x):
        if isinstance(x, np.ndarray):
            return torch.from_numpy(x).float(), True
        return x, False

    def rotate_points_along_z(self,points, angle):
        """
        Args:
            points: (B, N, 3 + C)
            angle: (B), angle along z-axis, angle increases x ==> y
        Returns:

        """
        points, is_numpy = self.check_numpy_to_torch(points)
        angle, _ = self.check_numpy_to_torch(angle)

        cosa = torch.cos(angle)
        sina = torch.sin(angle)
        zeros = angle.new_zeros(points.shape[0])
        ones = angle.new_ones(points.shape[0])
        rot_matrix = torch.stack((
            cosa,  sina, zeros,
            -sina, cosa, zeros,
            zeros, zeros, ones
        ), dim=1).view(-1, 3, 3).float()
        points_rot = torch.matmul(points[:, :, 0:3], rot_matrix)
        points_rot = torch.cat((points_rot, points[:, :, 3:]), dim=-1)
        return points_rot.numpy() if is_numpy else points_rot

    def boxes_to_corners_3d(self,boxes3d):
        """
            7 -------- 4
         /|         /|
        6 -------- 5 .
        | |        | |
        . 3 -------- 0
        |/         |/
        2 -------- 1
        Args:
            boxes3d:  (N, 7) [x, y, z, dx, dy, dz, heading], (x, y, z) is the box center

        Returns:
        """
        boxes3d, is_numpy = self.check_numpy_to_torch(boxes3d)

        template = boxes3d.new_tensor((
            [1, 1, -1], [1, -1, -1], [-1, -1, -1], [-1, 1, -1],
            [1, 1, 1], [1, -1, 1], [-1, -1, 1], [-1, 1, 1],
        )) / 2

        corners3d = boxes3d[:, None, 3:6].repeat(1, 8, 1) * template[None, :, :]
        corners3d = self.rotate_points_along_z(corners3d.view(-1, 8, 3), boxes3d[:, 6]).view(-1, 8, 3)
        corners3d += boxes3d[:, None, 0:3]
        
        # corners3d[:, :, 2] += 3
        
        dz = boxes3d[:, 5]
        half_dz = dz / 2
        corners3d[:, :, 2] += half_dz[:, None]

        return corners3d.numpy() if is_numpy else corners3d

    def publish_3dbox(
        self,
        dt_box_lidar,
        track_ids,
        types=None,
        publish_id=True,
        publish_type=True,
        velocities=None,
        states=None
    ):
        """
        Publish 3D boxes with unified text: ID + type + velocity + state.
        Clean version: each object uses only 2 markers (box + text).
        """

        corners_3d_velos = self.boxes_to_corners_3d(dt_box_lidar)
        marker_array = MarkerArray()

        N = len(corners_3d_velos)

        # -----------------------------
        # 安全处理输入长度
        # -----------------------------
        if types is None:
            types = ["unknown"] * N
        if len(types) < N:
            types = list(types) + ["unknown"] * (N - len(types))

        if track_ids is None:
            track_ids = [-1] * N
        if len(track_ids) < N:
            track_ids = list(track_ids) + [-1] * (N - len(track_ids))

        if velocities is None:
            velocities = [0.0] * N
        if len(velocities) < N:
            velocities = list(velocities) + [0.0] * (N - len(velocities))

        if states is None:
            states = [""] * N
        if len(states) < N:
            states = list(states) + [""] * (N - len(states))

        # -----------------------------
        # 绘制每个目标
        # -----------------------------
        for i, corners_3d_velo in enumerate(corners_3d_velos):

            # ============================
            # 1. 3D BOX MARKER
            # ============================
            marker = Marker()
            marker.header.frame_id = self.frame_id
            marker.header.stamp = self.node.get_clock().now().to_msg()
            marker.ns = "box"
            marker.id = i
            marker.action = Marker.ADD
            marker.type = Marker.LINE_LIST

            # lifetime
            marker_lifetime = Duration()
            marker_lifetime.sec = int(self.lifetime)
            marker_lifetime.nanosec = int((self.lifetime - marker_lifetime.sec) * 1e9)
            marker.lifetime = marker_lifetime

            marker.scale.x = 0.1

            # ---- 颜色映射（按类型）----
            obj_type = types[i]
            r, g, b = DETECTION_COLOR_MAP.get(obj_type, (0, 255, 255))

            # ---- 根据动静状态覆盖颜色 ----
            state = states[i]

            if state == "STA":          # 静止
                r, g, b = (0, 255, 0)      # 绿色
            elif state == "MOV":        # 运动
                r, g, b = (255, 0, 0)      # 红色
            elif state == "accelerating":  # 加速
                r, g, b = (255, 255, 0)    # 黄色
            elif state == "decelerating":  # 减速
                r, g, b = (0, 128, 255)    # 蓝色

            # 设置颜色
            marker.color.r = r / 255.0
            marker.color.g = g / 255.0
            marker.color.b = b / 255.0
            marker.color.a = 1.0


            # box lines
            marker.points = []
            for l in LINES:
                p1 = corners_3d_velo[l[0]]
                p2 = corners_3d_velo[l[1]]

                marker.points.append(Point(x=float(p1[0]), y=float(p1[1]), z=float(p1[2])))
                marker.points.append(Point(x=float(p2[0]), y=float(p2[1]), z=float(p2[2])))

            marker_array.markers.append(marker)

            # ============================
            # 2. UNIFIED TEXT MARKER
            # ============================
            text_marker = Marker()
            text_marker.header.frame_id = self.frame_id
            text_marker.header.stamp = self.node.get_clock().now().to_msg()
            text_marker.ns = "info"
            text_marker.id = i
            text_marker.action = Marker.ADD
            text_marker.type = Marker.TEXT_VIEW_FACING
            text_marker.lifetime = marker_lifetime

            # 放在 box 顶部
            p4 = corners_3d_velo[4]
            text_marker.pose.position.x = float(p4[0])
            text_marker.pose.position.y = float(p4[1])
            text_marker.pose.position.z = float(p4[2] + 1.2)

            # ---- 文本内容合并 ----
            track_id = track_ids[i]
            obj_type = types[i]
            speed = velocities[i]
            state = states[i]

            text_marker.text = f"ID={track_id} {obj_type} v={speed:.2f} m/s | {state}"
            # text_marker.text = f"{state}"

            text_marker.scale.z = 1.0
            text_marker.color.r = r / 255.0
            text_marker.color.g = g / 255.0
            text_marker.color.b = b / 255.0
            text_marker.color.a = 1.0

            marker_array.markers.append(text_marker)

        # ============================
        # PUBLISH
        # ============================
        self.box3d_pub.publish(marker_array)

class  Detection3DNode(Node):
    def __init__(self):
        super().__init__('mmdetection3d_ros_node')
        self.image_list = []
        self.config_file = '/workspace/CogniScope/src/mmdetection3d/configs/mvxnet/mvxnet_fpn_dv_second_secfpn_8xb2-80e_kitti-3d-3class.py'
        # self.checkpoint_file = '/workspace/CogniScope/src//fusiondet/fusiondet/models/fz_epoch_80.pth'
        # self.checkpoint_file = '/home/dell/ljw/code/CogniScope/src/mmdetection3d/work-dir/train_zs_260112/epoch_5.pth' #618_data
        self.checkpoint_file = '/workspace/CogniScope/src/fusion_tracker/models/mvxnet_fpn_dv_second_secfpn_8xb2-80e_kitti-3d-3class-8963258a.pth'
        self.ann_file = '/workspace/CogniScope/src/fusiondet/config/kitti_infos_val.pkl' 
        # self.calib = '/workspace/CogniScope/src/fusiondet/config/robotc_1.txt' #618_data
        self.calib = '/workspace/CogniScope/src/fusiondet/config/000001.txt' #kitti_data
        # self.calib = '/workspace/CogniScope/src/fusiondet/config/000815_1.txt'
        self.save_image_dir = '/workspace/CogniScope/src/fusiondet/img_det3d/'
        # 建议调整到更高的值来减少检测数量
        self.score_thr = 0.6 #0.7
        self.frame_count = 0
        self.frame_id = ''
        self.marker_frame_id="zwlidar" #"lidar_frame"
        self.no_frame_id = True
        self.rate = 1.0

        # 初始化跟踪器
        tracker_cfg = "/workspace/CogniScope/src/pcdet_ros2/config/tracker.yaml"
        cat = "Car"
        mot_cfg, _ = MOTConfig(tracker_cfg)
        self.mot_tracker = AB3DMOT(mot_cfg, cat, log=None)
        self.frame_count_AB3DMOT = 0
        
        self.model = init_model(self.config_file,self.checkpoint_file,device='cuda:0')
        self.device = 'cuda:1'  # Assuming CUDA is available
        self.bridge = CvBridge()


        # 1. 取出原始 pipeline
        pipeline_cfg = deepcopy(self.model.cfg.test_dataloader.dataset.pipeline)

        # 2. 把 LoadPointsFromFile 改成 LoadPointsFromDict（更稳妥）
        for p in pipeline_cfg:
            if p['type'] == 'LoadPointsFromFile':
                p['type'] = 'LoadPointsFromDict'

        # 3. 构建一次 Compose，后面直接用
        self.test_pipeline = Compose(pipeline_cfg)
        calib = self.load_kitti_calib(self.calib)
        self.cam2img = np.array(calib['P2'], dtype=np.float32)
        lidar2cam = np.array(calib['Tr_velo2cam'], dtype=np.float32)

        self.lidar2cam_homo = np.eye(4, dtype=np.float32)
        self.lidar2cam_homo[:3, :] = lidar2cam
        self.lidar2img = self.cam2img @ self.lidar2cam_homo
        self.calib_dict = calib  # 后面投影还要用


        # 创建发布者
        self.pub_velo = self.create_publisher(PointCloud2, '/lidar_det3D', 10)
        self.pub_image = self.create_publisher(Image, '/image_det3D', 10)
        self.pub_bool = self.create_publisher(Bool, "det3D_bool_result", 10)
        # self.pub_bbox = self.create_publisher(BoundingBoxArray, '/detections_boudingbox', 10)
        self.pub_bbox = self.create_publisher(MarkerArray, '/detections_3Dboudingbox', 10)
        self.pub_bbox = Draw3DBox(self.pub_bbox, self, self.marker_frame_id, self.rate)
        # 创建订阅者
        self.bridge = CvBridge()
        # self.sub_velo = self.create_subscription(
        #     PointCloud2,
        #     '/zw040201/lidar_main_pointcloud',
        #     self.lidar_callback,
        #     10)
        # self.sub_cam = self.create_subscription(
        #     Image,
        #     '/zw040201/camera_main',
        #     self.camera_callback,
        #     10)
        self.sub_velo = self.create_subscription(
            PointCloud2,
            '/kitti/velo/pointcloud',
            # '/kitti/velo/pointcloud', '/carla_lidar'
            self.lidar_callback,
            10)
        self.sub_cam = self.create_subscription(
            Image,
            '/kitti/camera_color_left/image_raw',
            # '/kitti/camera_color_left/image_raw', '/carla_camera_rgb'
            self.camera_callback,
            10)
        self.sub_vel = self.create_subscription(
            TwistStamped,
            "/kitti/oxts/gps/vel",
            # "/wheel_speed", "/kitti/oxts/gps/vel"
            self.vel_callback,
            10)
        self.cv_bridge = CvBridge()
        self.get_logger().info('Initialized the node')
        
        # 初始化自车速度 
        self.ego_vx = 0.0 
        self.ego_vy = 0.0 
        self.ego_wz = 0.0

        self.ids = 0
    
    def vel_callback(self, msg: TwistStamped):
        self.ego_vx = msg.twist.linear.x
        self.ego_vy = msg.twist.linear.y
        self.ego_wz = msg.twist.angular.z


    def set_viz_frame_id(self, marker_frame_id):
        self.pub_bbox.set_frame_id(marker_frame_id)

    def load_kitti_calib(self,calib_file):
        """
        load projection matrix
        """
        with open(calib_file) as fi:
            lines = fi.readlines()
            # assert (len(lines) == 8)
        obj = lines[0].strip().split(' ')[1:]
        P0 = np.array(obj, dtype=np.float32)
        obj = lines[1].strip().split(' ')[1:]
        P1 = np.array(obj, dtype=np.float32)
        obj = lines[2].strip().split(' ')[1:]
        P2 = np.array(obj, dtype=np.float32)
        obj = lines[3].strip().split(' ')[1:]
        P3 = np.array(obj, dtype=np.float32)
        obj = lines[4].strip().split(' ')[1:]
        R0 = np.array(obj, dtype=np.float32)
        obj = lines[5].strip().split(' ')[1:]
        Tr_velo_to_cam = np.array(obj, dtype=np.float32)
        obj = lines[6].strip().split(' ')[1:]
        Tr_imu_to_velo = np.array(obj, dtype=np.float32)
        return {'P2': P2.reshape(3, 4),
                'R0': R0.reshape(3, 3),
                'Tr_velo2cam': Tr_velo_to_cam.reshape(3, 4)}



    def project_velo2rgb(self,velo, calib):
        T = np.zeros([4, 4], dtype=np.float32)
        T[:3, :] = calib['Tr_velo2cam']
        T[3, 3] = 1
        R = np.zeros([4, 4], dtype=np.float32)
        R[:3, :3] = calib['R0']
        R[3, 3] = 1
        num = len(velo)
        projections = np.zeros((num, 8, 2), dtype=np.int32)
        for i in range(len(velo)):
            box3d = np.ones([8, 4], dtype=np.float32)
            box3d[:, :3] = velo[i]
            M = np.dot(calib['P2'], R)
            M = np.dot(M, T)
            box2d = np.dot(M, box3d.T)
            box2d = box2d[:2, :].T / box2d[2, :].reshape(8, 1)
            projections[i] = box2d
        return projections

    def draw_rgb_projections(self, image, projections, color=(255, 255, 255), thickness=2, darker=1):
        img = image.copy() * darker
        num = len(projections)
        forward_color = (255, 255, 0)
        h, w = img.shape[:2]

        for n in range(num):
            qs = projections[n]

            for k in range(0, 4):
                i, j = k, (k + 1) % 4
                if (0 <= qs[i,0] < w and 0 <= qs[i,1] < h and
                    0 <= qs[j,0] < w and 0 <= qs[j,1] < h):
                    cv2.line(img, (qs[i,0], qs[i,1]), (qs[j,0], qs[j,1]), color, thickness, cv2.LINE_AA)

                i, j = k + 4, (k + 1) % 4 + 4
                if (0 <= qs[i,0] < w and 0 <= qs[i,1] < h and
                    0 <= qs[j,0] < w and 0 <= qs[j,1] < h):
                    cv2.line(img, (qs[i,0], qs[i,1]), (qs[j,0], qs[j,1]), color, thickness, cv2.LINE_AA)

                i, j = k, k + 4
                if (0 <= qs[i,0] < w and 0 <= qs[i,1] < h and
                    0 <= qs[j,0] < w and 0 <= qs[j,1] < h):
                    cv2.line(img, (qs[i,0], qs[i,1]), (qs[j,0], qs[j,1]), color, thickness, cv2.LINE_AA)

            # 前面几条黄色线
            pairs = [(3,7),(7,6),(6,2),(2,3),(3,6),(2,7)]
            for i,j in pairs:
                if (0 <= qs[i,0] < w and 0 <= qs[i,1] < h and
                    0 <= qs[j,0] < w and 0 <= qs[j,1] < h):
                    cv2.line(img, (qs[i,0], qs[i,1]), (qs[j,0], qs[j,1]), forward_color, thickness, cv2.LINE_AA)

        return img

    def box3d_cam_to_velo(self,box3d,tr):

        tx, ty, tz, l, w, h, ry = [float(i) for i in box3d]     #都是激光坐标系下的参数
        cam = np.ones([3, 1])
        cam[0] = tx
        cam[1] = ty
        cam[2] = tz
        t_lidar = cam.reshape(1,3)#摄像头下转点云坐标系
        Box = np.array([[-l / 2, -l / 2, l / 2, l / 2, -l / 2, -l / 2, l / 2, l / 2],
                        [w / 2, -w / 2, -w / 2, w / 2, w / 2, -w / 2, -w / 2, w / 2],
                        [0, 0, 0, 0, h, h, h, h]])
    
        rotMat = np.array([
            [np.cos(ry), -np.sin(ry), 0.0],
            [np.sin(ry), np.cos(ry), 0.0],
            [0.0, 0.0, 1.0]])
        velo_box = np.dot(rotMat, Box)
        cornerPosInVelo = velo_box + np.tile(t_lidar, (8, 1)).T
        box3d_corner = cornerPosInVelo.transpose()
        return box3d_corner.astype(np.float32)
            
    def load_kitti_label(self,box, Tr):
    
        gt_boxes3d_corner=[]
        for j in range(len(box)):
            box3d_corner = self.box3d_cam_to_velo(box[j], Tr)
            gt_boxes3d_corner.append(box3d_corner)
        gt_boxes3d_corner = np.array(gt_boxes3d_corner).reshape(-1, 8, 3)
        return gt_boxes3d_corner

    def get_template_prediction(self, num_samples):
        ret_dict = {
            'name': np.zeros(num_samples), 'truncated': np.zeros(num_samples),
            'occluded': np.zeros(num_samples), 'alpha': np.zeros(num_samples),
            'bbox': np.zeros([num_samples, 4]), 'dimensions': np.zeros([num_samples, 3]),
            'location': np.zeros([num_samples, 3]), 'rotation_y': np.zeros(num_samples),
            'score': np.zeros(num_samples), 'boxes_lidar': np.zeros([num_samples, 7])
        }
        return ret_dict
    
    def check_numpy_to_torch(self, x):
        if isinstance(x, np.ndarray):
            return torch.from_numpy(x).float(), True
        return x, False
    
    
    def rotate_points_along_z(self, points, angle):
        """
        Args:
            points: (B, N, 3 + C)
            angle: (B), angle along z-axis, angle increases x ==> y
        Returns:

        """
        points, is_numpy = self.check_numpy_to_torch(points)
        angle, _ = self.check_numpy_to_torch(angle)

        cosa = torch.cos(angle)
        sina = torch.sin(angle)
        zeros = angle.new_zeros(points.shape[0])
        ones = angle.new_ones(points.shape[0])
        rot_matrix = torch.stack((
            cosa,  sina, zeros,
            -sina, cosa, zeros,
            zeros, zeros, ones
        ), dim=1).view(-1, 3, 3).float()
        points_rot = torch.matmul(points[:, :, 0:3], rot_matrix)
        points_rot = torch.cat((points_rot, points[:, :, 3:]), dim=-1)
        return points_rot.numpy() if is_numpy else points_rot

    def lidar_callback(self, msg):
        # print("lidar_callback")
        self.ids = self.ids + 1
        start_time = time.time() # ⏱️ 推理开始
        self.frame_id = msg.header.frame_id
        if len(self.image_list) == 0:
            self.get_logger().info('No image around lidar')
            return 

        # 1. 点云转换
        available_fields = [f.name for f in msg.fields]

        dtype_list = [('x', np.float32), ('y', np.float32), ('z', np.float32)]
        if "intensity" in available_fields:
            dtype_list.append(('intensity', np.float32))
        elif "i" in available_fields:
            dtype_list.append(('i', np.float32))
        if "object_idx" in available_fields:
            dtype_list.append(('object_idx', np.uint32)) 
        if "object_tag" in available_fields: 
            dtype_list.append(('object_tag', np.uint32))

        point_dtype = np.dtype(dtype_list)

        # 直接从 buffer 解析（最快方式）
        points_struct = np.frombuffer(msg.data, dtype=point_dtype)

        # 如果只需要前四个字段，可以单独提取 
        if "intensity" in available_fields:
            points = np.vstack(( 
                points_struct['x'], 
                points_struct['y'], 
                points_struct['z'], 
                points_struct['intensity'] 
                )).T.astype(np.float32)
        elif "i" in available_fields:
            points = np.vstack(( 
                points_struct['x'], 
                points_struct['y'], 
                points_struct['z'], 
                points_struct['i'] 
                )).T.astype(np.float32)

        # 转成普通 float32 数组（一次 reshape）
        # points = points_struct.view(np.float32).reshape(-1, len(dtype_list))

        # 2. 图像转换   
        image_np = np.asarray(self.image_list[-1])

        # 3. 相机参数（直接用 __init__ 里算好的）
        cam2img = self.cam2img
        lidar2cam = self.lidar2cam_homo[:3, :]   # 如果后面有用
        lidar2img = self.lidar2img

        # 4. 构造 data_ 字典
        box_type_3d, box_mode_3d = get_box_type(self.model.cfg.test_dataloader.dataset.box_type_3d)
        data_ = dict(
            points=points,
            img=image_np,
            cam2img=cam2img,
            lidar2cam=lidar2cam,
            lidar2img=lidar2img,
            box_type_3d=box_type_3d,
            box_mode_3d=box_mode_3d,
            timestamp=0
        )

        # start_time_1 = time.time()
        # elapsed_11 = start_time_1 - start_time
        # fps_11 = 1.0 / elapsed_11
        # print(f"date pro time: {elapsed_11:.3f}s, FPS: {fps_11:.2f}")

        # 5. 走 pipeline（直接用 self.test_pipeline）
        
        data_ = self.test_pipeline(data_)
        collate_data = pseudo_collate([data_])

        # end_time_1 = time.time()
        # elapsed_1 = end_time_1 - start_time_1
        # fps_1 = 1.0 / elapsed_1
        # print(f"pipline date pro time: {elapsed_1:.3f}s, FPS: {fps_1:.2f}")


        # 6. 推理
        with torch.no_grad():
            results = self.model.test_step(collate_data)

        #检测推理时间
        # end_time_2 = time.time() # ⏱️ 推理结束 
        # elapsed_2 = end_time_2 - end_time_1 
        # fps_2 = 1.0 / elapsed_2 
        # print(f"det inf time: {elapsed_2:.3f}s, FPS: {fps_2:.2f}")

        # 7. 后处理和发布
        result = results[0]
        pred = result.pred_instances_3d

        if 'bboxes_3d' in pred:
            boxes_lidar = pred['bboxes_3d'].tensor.cpu().numpy()
            labels = pred['labels_3d'].cpu().numpy()
            scores = pred['scores_3d'].cpu().numpy()
        else:
            print("No bboxes_3d in result")
            return

        # 阈值过滤
        high_score_indices = np.where(scores >= self.score_thr)[0]
        boxes_lidar_filtered = boxes_lidar[high_score_indices]
        labels_filtered = labels[high_score_indices]
        scores_filtered = scores[high_score_indices]

        # 构造预测字典
        pred_dict = self.get_template_prediction(scores_filtered.shape[0])
        pred_dict['name'] = np.array(['Pedestrian', 'Cyclist', 'Car'])[labels_filtered]
        pred_dict['score'] = scores_filtered
        pred_dict['boxes_lidar'] = boxes_lidar_filtered

        # 调用 AB3DMOT 更新 
        dets_list, info_list = [], []
        for i in range(boxes_lidar_filtered.shape[0]):
            x, y, z, w, l, h, yaw = boxes_lidar_filtered[i]
            dets_list.append([h, w, l, x, y, z, yaw])
            info_list.append([scores_filtered[i], 1, 1, 1, 1, 1, 1])
        dets = np.array(dets_list, dtype=np.float32)
        info = np.array(info_list, dtype=np.float32)

        trackers, _ = self.mot_tracker.track({'dets': dets, 'info': info}, self.frame_count_AB3DMOT, seq_name="ros2")
        self.frame_count_AB3DMOT += 1 
        tracks = trackers[0] if len(trackers) > 0 else np.empty((0, 15))
        dt_box_lidar, track_ids, velocities = [], [], []
        track_classes, track_states = [],[]
        if len(tracks) == 0:
                self.get_logger().info("No tracks this frame, publishing empty Detection3DArray.")
        else:
            for trk in tracks:
                # print('trk.shape', trk.shape)
                h, w, l, x, y, z, yaw= trk[:7]
                dt_box_lidar.append([x, y, z, w, l, h, yaw])
                track_ids.append(int(trk[7]))
                vx, vy, vz = trk[8], trk[9], trk[10]
                # speed = math.sqrt((vx*26+self.ego_vx*0.4) ** 2 + (vy*26+self.ego_vy*0.4) ** 2 + (vz+self.ego_wz) ** 2)
                speed = math.sqrt((vx*20+self.ego_vx*0.4) ** 2 + (vy*20+self.ego_vy*0.4) ** 2)
                velocities.append(speed)
                state = "MOV" if speed > 0.5 else "STA"
                # 调试日志，带上 Track ID
                track_id = int(trk[7])
                self.get_logger().info(
                    f"""Track ID={self.ids} 
                    vel before={[vx*20, vy*20]}, \ 
                    ego_vel={[self.ego_vx*0.4, self.ego_vy*0.4]}, \ 
                    vel after={[vx*26+self.ego_vx*0.4, vy*26+self.ego_vy*0.4]}, speed={speed:.2f}, \ 
                    state={state}
                    """
                )
                track_states.append(state)
                # 1. 找到与该 track 最近的检测框 
                if len(boxes_lidar_filtered) > 0: 
                    dists = np.linalg.norm(boxes_lidar_filtered[:, :3] - np.array([x, y, z]), axis=1) 
                    nearest_idx = np.argmin(dists) 
                    # 2. 取检测类别 
                    cls = pred_dict['name'][nearest_idx] 
                else: 
                    cls = "Unknown" 
                track_classes.append(cls)
        
        #跟踪推理时间
        # end_time_3 = time.time() # ⏱️ 推理结束 
        # elapsed_3 = end_time_3 - end_time_2 
        # fps_3 = 1.0 / elapsed_3 
        # print(f"mot inf time: {elapsed_3:.3f}s, FPS: {fps_3:.2f}")

        dt_box_lidar = np.array(dt_box_lidar, dtype=np.float32)
        track_ids = np.array(track_ids, dtype=np.int32)
        velocities = np.array(velocities, dtype=np.float32)
        # print("boxes_lidar_filtered.shape", boxes_lidar_filtered.shape)
        # print("dt_box_lidar.shape", dt_box_lidar.shape)
        # print('111')
        # ✅ 再次防御性检查 
        if dt_box_lidar.shape[0] == 0: 
            self.get_logger().info("dt_box_lidar empty, skip publishing.") 
            return

        # 8. 投影到图像并发布
        msg_bool = Bool()
        if len(boxes_lidar_filtered) > 0:
            gt_box3d = self.load_kitti_label(dt_box_lidar, self.calib_dict['Tr_velo2cam'])
            gt_3dTo2D = self.project_velo2rgb(gt_box3d, self.calib_dict)
            img_with_box = self.draw_rgb_projections(image_np, gt_3dTo2D, color=(0, 0, 255), thickness=1)
            result_img_msg = self.bridge.cv2_to_imgmsg(img_with_box, encoding="bgr8")
            self.pub_image.publish(result_img_msg)

            msg_bool.data = True
            self.pub_bool.publish(msg_bool)

            # ✅ 发布检测框 + ID + 速度
            # self.pub_bbox.publish_3dbox( 
            #     dt_box_lidar=np.array(dt_box_lidar, dtype=np.float32), 
            #     track_ids=np.array(track_ids, dtype=np.int32), 
            #     types=np.array(track_classes), 
            #     velocities=np.array(velocities), 
            #     states=np.array(track_states), 
            #     publish_id=True, publish_type=True )
            self.pub_bbox.publish_3dbox( 
                dt_box_lidar=np.array(dt_box_lidar, dtype=np.float32), 
                track_ids=np.array([self.ids], dtype=np.int32), 
                types=np.array(track_classes), 
                velocities=np.array(velocities), 
                states=np.array(track_states), 
                publish_id=True, publish_type=True )
            self.pub_velo.publish(msg)
        else:
            msg_bool.data = False
            self.pub_bool.publish(msg_bool)
            result_img_msg = self.bridge.cv2_to_imgmsg(image_np, encoding="bgr8")
            self.pub_image.publish(result_img_msg)
            self.pub_velo.publish(msg)

        # 9. 设置 MarkerArray 的 frame_id
        if self.no_frame_id:
            self.set_viz_frame_id(msg.header.frame_id)
            self.no_frame_id = False

        end_time = time.time() # ⏱️ 推理结束 
        elapsed = end_time - start_time 
        fps = 1.0 / elapsed 
        print(f"Inference time: {elapsed:.3f}s, FPS: {fps:.2f}")




    def camera_callback(self, data):
        # print("camera_callback")
        # image = self.bridge.imgmsg_to_cv2(msg,desired_encoding="bgr8")
        image = self.bridge.imgmsg_to_cv2(data,desired_encoding="bgr8")
        self.image_list.append(image)
        if len(self.image_list) > 5:
            self.image_list.pop(0)


def main(args=None):
    rclpy.init(args=args)
    detection_3d_node = Detection3DNode()
    rclpy.spin(detection_3d_node)
    detection_3d_node.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()
