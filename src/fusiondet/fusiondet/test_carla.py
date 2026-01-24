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
import numpy as np
from cv_bridge import CvBridge
from PIL import Image as PILImage
from mmdet3d.apis import init_model, inference_multi_modality_detector 
from mmdet3d.core.points import get_points_type
# from mmdet3d.core.points import get_points_type

DETECTION_COLOR_MAP = {'Car': (255,255,0), 
                       'Pedestrian': (0, 226, 255), 
                       'Cyclist': (141, 40, 255)} # color for detection, in format bgr

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

        dz = boxes3d[:, 5]
        half_dz = dz / 2
        corners3d[:, :, 2] += half_dz[:, None]
        

        return corners3d.numpy() if is_numpy else corners3d
    
    
    def publish_3dbox(self,dt_box_lidar, track_ids, types=None, publish_id=True, publish_type=True):
        """
        Publish 3d boxes in velodyne coordinate, with color specified by object_types
        If object_types is None, set all color to cyan
        corners_3d_velos : list of (8, 4) 3d corners
        """
        # (N, 8, 3)
        corners_3d_velos = self.boxes_to_corners_3d(dt_box_lidar)

        marker_array = MarkerArray()

        for i, corners_3d_velo in enumerate(corners_3d_velos):
            # 3d box
            marker = Marker()
            marker.header.frame_id = self.frame_id
            marker.header.stamp = self.node.get_clock().now().to_msg()
            marker.id = i
            marker.action = Marker.ADD

            marker_lifetime = Duration()
            marker_lifetime.sec = int(self.lifetime)
            marker_lifetime.nanosec = int((self.lifetime - marker_lifetime.sec) * 1e9)
            # 设置 Marker 的 lifetime 字段
            marker.lifetime = marker_lifetime
            # marker.lifetime = Duration(self.lifetime)
            marker.type = Marker.LINE_LIST

            b, g, r = DETECTION_COLOR_MAP[types[i]]
            if types is None:
                marker.color.r = 0.0
                marker.color.g = 1.0
                marker.color.b = 1.0
            else:
                marker.color.r = r/255.0
                marker.color.g = g/255.0
                marker.color.b = b/255.0
            marker.color.a = 1.0
            marker.scale.x = 0.1

            marker.points = []
            for l in LINES:
                p1 = corners_3d_velo[l[0]]
                point1 = Point()
                point1.x = float(p1[0])
                point1.y = float(p1[1])
                point1.z = float(p1[2])
                marker.points.append(point1)
                p2 = corners_3d_velo[l[1]]
                point2 = Point()
                point2.x = float(p2[0])
                point2.y = float(p2[1])
                point2.z = float(p2[2])
                marker.points.append(point2)
            marker_array.markers.append(marker)

            # add track id
            if publish_id and track_ids != -1:
                track_id = track_ids[i]
                text_marker = Marker()
                text_marker.header.frame_id = self.frame_id
                text_marker.header.stamp = self.get_clock().now().to_msg()

                text_marker.id = track_id + 1000
                text_marker.action = Marker.ADD
                text_marker_lifetime = Duration()
                text_marker_lifetime.sec = int(self.lifetime)
                text_marker_lifetime.nanosec = int((self.lifetime - marker_lifetime.sec) * 1e9)
                # 设置 Marker 的 lifetime 字段
                text_marker.lifetime = marker_lifetime
                text_marker.type = Marker.TEXT_VIEW_FACING

                p4 = corners_3d_velo[4] # upper front left corner

                text_marker.pose.position.x = p4[0]
                text_marker.pose.position.y = p4[1]
                text_marker.pose.position.z = p4[2] + 0.5

                text_marker.text = str(track_id)

                text_marker.scale.x = 1
                text_marker.scale.y = 1
                text_marker.scale.z = 1

                if types is None:
                    text_marker.color.r = 0.0
                    text_marker.color.g = 1.0
                    text_marker.color.b = 1.0
                else:
                    b, g, r = DETECTION_COLOR_MAP[types[i]]
                    text_marker.color.r = r/255.0
                    text_marker.color.g = g/255.0
                    text_marker.color.b = b/255.0
                text_marker.color.a = 1.0
                marker_array.markers.append(text_marker)
                
            if publish_type:
                text_marker = Marker()
                text_marker.header.frame_id = self.frame_id
                text_marker.header.stamp = self.node.get_clock().now().to_msg()

                text_marker.id = i + 1000
                text_marker.action = Marker.ADD
                text_marker_lifetime = Duration()
                text_marker_lifetime.sec = int(self.lifetime)
                text_marker_lifetime.nanosec = int((self.lifetime - marker_lifetime.sec) * 1e9)
                # 设置 Marker 的 lifetime 字段
                text_marker.lifetime = marker_lifetime
                text_marker.type = Marker.TEXT_VIEW_FACING

                bc = (corners_3d_velo[6] + corners_3d_velo[7] + corners_3d_velo[2] + corners_3d_velo[3])/4 # back center

                text_marker.pose.position.x = float(bc[0])
                text_marker.pose.position.y = float(bc[1])
                text_marker.pose.position.z = float(bc[2] + 1.5)

                text_marker.text = types[i]
                text_marker.scale.x = 1.0
                text_marker.scale.y = 1.0
                text_marker.scale.z = 1.0
                b, g, r = DETECTION_COLOR_MAP[types[i]]
                text_marker.color.r = r/255.0
                text_marker.color.g = g/255.0
                text_marker.color.b = b/255.0
                text_marker.color.a = 1.0
                marker_array.markers.append(text_marker)

        self.box3d_pub.publish(marker_array)
        




class  Detection3DNode(Node):
    def __init__(self):
        super().__init__('mmdetection3d_ros_node')
        self.image_list = []
        self.config_file = '/workspace/mmdetection3d/configs/mvxnet/dv_mvx-fpn_second_secfpn_adamw_2x8_40e_kitti-3d-3class.py'
        self.checkpoint_file = '/workspace/detection/fusion_det/epoch_80.pth'
        self.ann_file = '/workspace/detection/fusion_det/kitti_infos_val.pkl' 
        self.calib = '/workspace/detection/fusion_det/000000.txt'
        self.save_image_dir = '/workspace/detection/fusion_det/ros1014/src/fusiondet/img_det3d/'
        self.score_thr = 0.2
        self.frame_count = 0
        self.frame_id = ''
        self.marker_frame_id="lidar_frame"
        self.no_frame_id = True
        self.rate = 1.0
        
        self.model = init_model(self.config_file,self.checkpoint_file,device='cuda:0')
        self.device = 'cuda:0'  # Assuming CUDA is available
        self.bridge = CvBridge()

        # 创建发布者
        self.pub_velo = self.create_publisher(PointCloud2, '/lidar_det3D', 10)
        self.pub_image = self.create_publisher(Image, '/image_det3D', 10)
        self.pub_bool = self.create_publisher(Bool, "det3D_bool_result", 10)
        # self.pub_bbox = self.create_publisher(BoundingBoxArray, '/detections_boudingbox', 10)
        self.pub_bbox = self.create_publisher(MarkerArray, '/detections_3Dboudingbox', 10)
        self.pub_bbox = Draw3DBox(self.pub_bbox, self, self.marker_frame_id, self.rate)
        # 创建订阅者
        self.bridge = CvBridge()
        self.sub_velo = self.create_subscription(
            PointCloud2,
            '/carla_lidar',
            self.lidar_callback,
            10)
        self.sub_cam = self.create_subscription(
            Image,
            '/carla_camera_rgb',
            self.camera_callback,
            10)
        self.cv_bridge = CvBridge()
        self.get_logger().info('Initialized the node')
        # input()

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

    def draw_rgb_projections(self,image, projections, color=(255, 255, 255), thickness=2, darker=1):
    
        img = image.copy() * darker
        num = len(projections)
        forward_color = (255, 255, 0)
        for n in range(num):
            qs = projections[n]
            for k in range(0, 4):
                i, j = k, (k + 1) % 4
                cv2.line(img, (qs[i, 0], qs[i, 1]), (qs[j, 0], qs[j, 1]), color, thickness, cv2.LINE_AA)
                i, j = k + 4, (k + 1) % 4 + 4
                cv2.line(img, (qs[i, 0], qs[i, 1]), (qs[j, 0], qs[j, 1]), color, thickness, cv2.LINE_AA)
                i, j = k, k + 4
                cv2.line(img, (qs[i, 0], qs[i, 1]), (qs[j, 0], qs[j, 1]), color, thickness, cv2.LINE_AA)
            cv2.line(img, (qs[3, 0], qs[3, 1]), (qs[7, 0], qs[7, 1]), forward_color, thickness, cv2.LINE_AA)
            cv2.line(img, (qs[7, 0], qs[7, 1]), (qs[6, 0], qs[6, 1]), forward_color, thickness, cv2.LINE_AA)
            cv2.line(img, (qs[6, 0], qs[6, 1]), (qs[2, 0], qs[2, 1]), forward_color, thickness, cv2.LINE_AA)
            cv2.line(img, (qs[2, 0], qs[2, 1]), (qs[3, 0], qs[3, 1]), forward_color, thickness, cv2.LINE_AA)
            cv2.line(img, (qs[3, 0], qs[3, 1]), (qs[6, 0], qs[6, 1]), forward_color, thickness, cv2.LINE_AA)
            cv2.line(img, (qs[2, 0], qs[2, 1]), (qs[7, 0], qs[7, 1]), forward_color, thickness, cv2.LINE_AA)
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
        # print(np.tile(t_lidar, (8, 1)).T)
        # print(velo_box)
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

    # def boxes_to_corners_3d(self, boxes3d):
    #     """
    #         7 -------- 4
    #     /|         /|
    #     6 -------- 5 .
    #     | |        | |
    #     . 3 -------- 0
    #     |/         |/
    #     2 -------- 1
    #     Args:
    #         boxes3d:  (N, 7) [x, y, z, dx, dy, dz, heading], (x, y, z) is the box center

    #     Returns:
    #     """
    #     boxes3d, is_numpy = self.check_numpy_to_torch(boxes3d)

    #     template = boxes3d.new_tensor((
    #         [1, 1, -1], [1, -1, -1], [-1, -1, -1], [-1, 1, -1],
    #         [1, 1, 1], [1, -1, 1], [-1, -1, 1], [-1, 1, 1],
    #     )) / 2

    #     corners3d = boxes3d[:, None, 3:6].repeat(1, 8, 1) * template[None, :, :]
    #     corners3d = self.rotate_points_along_z(corners3d.view(-1, 8, 3), boxes3d[:, 6]).view(-1, 8, 3)
    #     corners3d += boxes3d[:, None, 0:3]
    #     corners3d += boxes3d[:, None, 0:3]

    #     return corners3d.numpy() if is_numpy else corners3d


    def lidar_callback(self, msg):
        print("lidar_callback")
        self.frame_id = msg.header.frame_id
        if len(self.image_list) == 0:
            self.get_logger().info('No image around lidar')
            return 

         # 1.deal with lidar info
        num = len(self.image_list)
        print('image len:',num)
        # points= np.array(pc2.read_points_list(msg))
        points = np.array(pc2.read_points_list(msg, field_names=("x", "y", "z", "intensity"), skip_nans=True))
        # 将点云数据转换为mmdet3d模型的输入格式
        points_class =get_points_type('LIDAR') 
        points_mmdet3d = points_class(points,points_dim=points.shape[-1],attribute_dims=None) 
        image_near = self.image_list[-1]  # 从全局变量image_list中取出最新的图像数据
        # im = np.frombuffer(image_near.data, dtype = np.uint8).reshape(image_near.height, image_near.width, -1)  # 将image_near中的图像数据转换为一个NumPy数组
 # 将图像从BGR格式转换为RGB格式
        image_np = np.asarray(image_near)
        # image_class = get_points_type('CAMERA')
        # image_mmdet3d = image_class(image_near,points_dim=points.shape[-1],attribute_dims=None) 

        # 2.inference with the AI model
        ann_file = self.ann_file
        # print('points',points) # Annotation files.
        # print('image_np',image_np) # Annotation files.
        result,data = inference_multi_modality_detector(self.model, points_mmdet3d, image_np, ann_file)
        self.frame_count += 1
        # print("鄢兰懿:得到result")
    
        #####处理推理出的result，发布消息
        for key, value in result[0].items():
            print(key,",",value)
        if 'boxes_3d' in result[0][key]:
            boxes_lidar=result[0][key]['boxes_3d'].tensor.cpu().numpy()
        else:
            print('boxes_3d key not found in result dictionary')
        # boxes_lidar=result[0]['boxes_3d'].numpy() 
        label=result[0][key]['labels_3d'].numpy()
        scores=result[0][key]['scores_3d'].numpy()
        num_detections = boxes_lidar.shape[0]

        ###修改阈值
        score_threshold = self.score_thr
        high_score_indices = np.where(scores >= score_threshold)[0]

        # 使用这些索引来筛选 boxes_lidar 和 labels_3d
        boxes_lidar_filtered = boxes_lidar[high_score_indices]
        labels_3d_filtered = label[high_score_indices]
        scores_filtered = scores[high_score_indices]
        num_detections_filtered = boxes_lidar_filtered.shape[0]

        pred_boxes = np.copy(boxes_lidar_filtered)
        pred_dict = self.get_template_prediction(scores_filtered.shape[0])
        pred_dict['name'] = np.array(['Pedestrian', 'Cyclist', 'Car'])[labels_3d_filtered]
        pred_dict['score'] = scores_filtered
        pred_dict['boxes_lidar'] = pred_boxes
       
        
        msg_bool = Bool()
        ####### 点云检测框投影到图像上
        if (num_detections_filtered>0):                
            # lidar = data['points'][0][0].cpu().numpy()
            image = image_near
            calib = self.load_kitti_calib(self.calib)
            
            # gt_box3d = result[0]['pts_bbox']['boxes_3d'].tensor.cpu().numpy()
            gt_box3d = boxes_lidar_filtered
        
            # 在激光坐标系下预测框的八个顶点
            gt_box3d = self.load_kitti_label(gt_box3d, calib['Tr_velo2cam'])
        
            # view in point cloud，可视化
            gt_3dTo2D = self.project_velo2rgb(gt_box3d, calib)
            img_with_box = self.draw_rgb_projections(image, gt_3dTo2D, color=(0, 0, 255), thickness=1)
            # 每50帧保存一次结果图像
            if self.frame_count % 1 == 0:
                image_filename = os.path.join(self.save_image_dir, f"frame_{self.frame_count:04d}.png")
                # cv2.imwrite(image_filename, img_with_box)
            result_img_msg = self.bridge.cv2_to_imgmsg(img_with_box,encoding="bgr8")
            self.pub_image.publish(result_img_msg)

                      
            msg_bool.data = True
            self.pub_bool.publish(msg_bool)
            
        else:
            msg_bool.data = False
            self.pub_bool.publish(msg_bool)
            result_img_msg = self.bridge.cv2_to_imgmsg(image_near,encoding="bgr8")
            self.pub_image.publish(result_img_msg)

        
        #########发布makerArray########
        select_boxs, select_types = [],[]
        if self.no_frame_id:
            self.set_viz_frame_id(msg.header.frame_id)
            print(f"{bc.OKGREEN} setting marker frame id to lidar: {msg.header.frame_id} {bc.ENDC}")
            self.no_frame_id = False

        for i, score in enumerate(scores_filtered):
            # if score> self.score_thr:
            select_boxs.append(boxes_lidar_filtered[i])
            select_types.append(pred_dict['name'][i])
        if(len(select_boxs)>0):
            self.pub_bbox.publish_3dbox(np.array(select_boxs), -1, pred_dict['name'])  ####yanlanyi
            self.pub_velo.publish(msg)
            print_str = f"Frame id: {self.frame_id}. Prediction results: \n"
            for i in range(len(pred_dict['name'])):
                print_str += f"Type: {pred_dict['name'][i]:.3s} Prob: {scores[i]:.2f}\n"
            print(print_str)
        else:
            self.pub_velo.publish(msg)
            print(f"\n{bc.FAIL} No confident prediction in this time stamp {bc.ENDC}\n")
        print(f" -------------------------------------------------------------- ")


    def camera_callback(self, data):
        print("camera_callback")
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

DETECTION_COLOR_MAP = {
    "car": (255, 0, 0),          # 红
    "truck": (255, 165, 0),      # 橙
    "bus": (255, 215, 0),        # 金
    "pedestrian": (0, 255, 0),   # 绿
    "cyclist": (0, 255, 255),    # 青
    "motor": (0, 128, 255),      # 蓝
    "unknown": (255, 255, 255),  # 白
}


def publish_3dbox(self, dt_box_lidar, track_ids, types=None, publish_id=True, publish_type=True, velocities=0):
    """
    Publish 3D boxes with ID, type, and velocity.
    """

    corners_3d_velos = self.boxes_to_corners_3d(dt_box_lidar)
    marker_array = MarkerArray()

    for i, corners_3d_velo in enumerate(corners_3d_velos):

        # ============================
        # 1. 3D BOX MARKER
        # ============================
        marker = Marker()
        marker.header.frame_id = self.frame_id
        marker.header.stamp = self.node.get_clock().now().to_msg()
        marker.id = i
        marker.action = Marker.ADD
        marker.type = Marker.LINE_LIST

        # lifetime
        marker_lifetime = Duration()
        marker_lifetime.sec = int(self.lifetime)
        marker_lifetime.nanosec = int((self.lifetime - marker_lifetime.sec) * 1e9)
        marker.lifetime = marker_lifetime

        marker.scale.x = 0.1

        # ---- 颜色映射 ----
        if types is not None:
            obj_type = types[i]
            if obj_type in DETECTION_COLOR_MAP:
                r, g, b = DETECTION_COLOR_MAP[obj_type]
            else:
                r, g, b = (0, 255, 255)
        else:
            r, g, b = (0, 255, 255)

        marker.color.r = r / 255.0
        marker.color.g = g / 255.0
        marker.color.b = b / 255.0
        marker.color.a = 1.0

        # box lines
        marker.points = []
        for l in LINES:
            p1 = corners_3d_velo[l[0]]
            p2 = corners_3d_velo[l[1]]

            point1 = Point(x=float(p1[0]), y=float(p1[1]), z=float(p1[2]))
            point2 = Point(x=float(p2[0]), y=float(p2[1]), z=float(p2[2]))

            marker.points.append(point1)
            marker.points.append(point2)

        marker_array.markers.append(marker)

        # ============================
        # 2. TRACK ID TEXT
        # ============================
        if publish_id and len(track_ids) > i and track_ids[i] != -1:

            track_id = int(track_ids[i])

            text_marker = Marker()
            text_marker.header.frame_id = self.frame_id
            text_marker.header.stamp = self.node.get_clock().now().to_msg()
            text_marker.id = 1000 + i
            text_marker.action = Marker.ADD
            text_marker.type = Marker.TEXT_VIEW_FACING

            text_marker_lifetime = Duration()
            text_marker_lifetime.sec = int(self.lifetime)
            text_marker_lifetime.nanosec = int((self.lifetime - text_marker_lifetime.sec) * 1e9)
            text_marker.lifetime = text_marker_lifetime

            # 放在 box 顶部
            p4 = corners_3d_velo[4]
            text_marker.pose.position.x = float(p4[0])
            text_marker.pose.position.y = float(p4[1])
            text_marker.pose.position.z = float(p4[2] + 0.5)

            text_marker.text = str(track_id)

            text_marker.scale.x = 1.0
            text_marker.scale.y = 1.0
            text_marker.scale.z = 1.0

            # 颜色映射
            text_marker.color.r = r / 255.0
            text_marker.color.g = g / 255.0
            text_marker.color.b = b / 255.0
            text_marker.color.a = 1.0

            marker_array.markers.append(text_marker)

        # ============================
        # 3. TYPE + VELOCITY TEXT
        # ============================
        if publish_type:

            text_marker = Marker()
            text_marker.header.frame_id = self.frame_id
            text_marker.header.stamp = self.node.get_clock().now().to_msg()
            text_marker.id = 2000 + i
            text_marker.action = Marker.ADD
            text_marker.type = Marker.TEXT_VIEW_FACING

            text_marker_lifetime = Duration()
            text_marker_lifetime.sec = int(self.lifetime)
            text_marker_lifetime.nanosec = int((self.lifetime - text_marker_lifetime.sec) * 1e9)
            text_marker.lifetime = text_marker_lifetime

            # 放在 box 后中心
            bc = (corners_3d_velo[6] + corners_3d_velo[7] + corners_3d_velo[2] + corners_3d_velo[3]) / 4
            text_marker.pose.position.x = float(bc[0])
            text_marker.pose.position.y = float(bc[1])
            text_marker.pose.position.z = float(bc[2] + 1.5)

            # ---- 速度处理 ----
            v = velocities[i]
            if isinstance(v, (list, tuple, np.ndarray)):
                speed = float(np.linalg.norm(v))
            else:
                speed = float(v)

            obj_type = types[i] if types is not None else ""
            text_marker.text = f"{obj_type} | v={speed:.2f} m/s"

            text_marker.scale.x = 1.0
            text_marker.scale.y = 1.0
            text_marker.scale.z = 1.0

            # 颜色映射
            text_marker.color.r = r / 255.0
            text_marker.color.g = g / 255.0
            text_marker.color.b = b / 255.0
            text_marker.color.a = 1.0

            marker_array.markers.append(text_marker)

    # ============================
    # PUBLISH
    # ============================
    self.box3d_pub.publish(marker_array)



