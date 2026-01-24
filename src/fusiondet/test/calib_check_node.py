import rclpy
from rclpy.node import Node
import numpy as np
import cv2
from cv_bridge import CvBridge
from sensor_msgs.msg import PointCloud2, Image
import sensor_msgs_py.point_cloud2 as pc2
from visualization_msgs.msg import MarkerArray, Marker
from geometry_msgs.msg import Point
from message_filters import Subscriber, ApproximateTimeSynchronizer

class CalibCheckNode(Node):
    def __init__(self):
        super().__init__('calib_check_node_sync')

        # 同步订阅
        self.sub_cam = Subscriber(self, Image, '/zw040201/camera_main')
        self.sub_lidar = Subscriber(self, PointCloud2, '/zw040201/lidar_main_pointcloud')
        ats = ApproximateTimeSynchronizer([self.sub_cam, self.sub_lidar], queue_size=10, slop=0.1)
        ats.registerCallback(self.synced_callback)

        # 发布到 RViz
        self.pub_marker = self.create_publisher(MarkerArray, '/calib_check_markers', 10)
        self.pub_image = self.create_publisher(Image, '/calib_check_image', 10)

        self.bridge = CvBridge()

        # 加载标定文件
        self.calib = self.load_kitti_calib('/workspace/ros2_yolo/src/fusiondet/config/robotc_1.txt')
        self.get_logger().info("Calibration loaded.")

    def load_kitti_calib(self, calib_file):
        with open(calib_file) as fi:
            lines = fi.readlines()
        P2 = np.array(lines[2].strip().split(' ')[1:], dtype=np.float32).reshape(3, 4)
        R0 = np.array(lines[4].strip().split(' ')[1:], dtype=np.float32).reshape(3, 3)
        Tr_velo2cam = np.array(lines[5].strip().split(' ')[1:], dtype=np.float32).reshape(3, 4)
        return {'P2': P2, 'R0': R0, 'Tr_velo2cam': Tr_velo2cam}

    def synced_callback(self, image_msg, lidar_msg):
        # 转换图像
        image = self.bridge.imgmsg_to_cv2(image_msg, desired_encoding="bgr8")

        # 解析点云
        points = np.array([[p[0], p[1], p[2]] for p in pc2.read_points(lidar_msg, field_names=("x","y","z"), skip_nans=True)], dtype=np.float32)

        # 投影到图像
        img = image.copy()
        proj_points = self.project_points(points, self.calib)

        # 绘制点云投影
        # for u,v in proj_points:
        #     if 0 <= int(u) < img.shape[1] and 0 <= int(v) < img.shape[0]:
        #         cv2.circle(img, (int(u), int(v)), 2, (0,0,255), -1)

        # 创建点云中心区域的框
        if len(points) > 0:
            # 计算点云的中心和边界
            x_mean, y_mean, z_mean = np.mean(points, axis=0)
            
            # 定义框的尺寸（可以根据需要调整）
            box_width = 2.0  # 米
            box_height = 1.0  # 米
            box_depth = 2.0  # 米
            
            # 创建框的8个顶点
            box_vertices = np.array([
                [x_mean - box_width/2, y_mean - box_height/2, z_mean - box_depth/2],  # 左下前
                [x_mean + box_width/2, y_mean - box_height/2, z_mean - box_depth/2],  # 右下前
                [x_mean + box_width/2, y_mean + box_height/2, z_mean - box_depth/2],  # 右上前
                [x_mean - box_width/2, y_mean + box_height/2, z_mean - box_depth/2],  # 左上前
                [x_mean - box_width/2, y_mean - box_height/2, z_mean + box_depth/2],  # 左下后
                [x_mean + box_width/2, y_mean - box_height/2, z_mean + box_depth/2],  # 右下后
                [x_mean + box_width/2, y_mean + box_height/2, z_mean + box_depth/2],  # 右上后
                [x_mean - box_width/2, y_mean + box_height/2, z_mean + box_depth/2],  # 左上后
            ], dtype=np.float32)
            
            # 投影框的顶点
            box_proj_points = self.project_points(box_vertices, self.calib)
            
            # 绘制框的边
            box_proj_points = np.array([[int(u), int(v)] for u, v in box_proj_points])
            
            # 定义框的边（连接8个顶点形成立方体）
            edges = [
                (0, 1), (1, 2), (2, 3), (3, 0),  # 前面四边
                (4, 5), (5, 6), (6, 7), (7, 4),  # 后面四边
                (0, 4), (1, 5), (2, 6), (3, 7)   # 连接前后四边
            ]
            
            for start_idx, end_idx in edges:
                pt1 = tuple(box_proj_points[start_idx])
                pt2 = tuple(box_proj_points[end_idx])
                if (0 <= pt1[0] < img.shape[1] and 0 <= pt1[1] < img.shape[0] and
                    0 <= pt2[0] < img.shape[1] and 0 <= pt2[1] < img.shape[0]):
                    cv2.line(img, pt1, pt2, (0, 255, 0), 2)
            
            # 在RViz中发布框的标记
            self.publish_box_marker(image_msg, box_vertices, edges)

        # 发布图像
        img_msg = self.bridge.cv2_to_imgmsg(img, encoding="bgr8")
        self.pub_image.publish(img_msg)

        # 发布 RViz Marker (原来的点云投影)
        marker_array = MarkerArray()
        marker = Marker()
        marker.header.frame_id = image_msg.header.frame_id  # 使用相机坐标系
        marker.header.stamp = self.get_clock().now().to_msg()
        marker.ns = "calib_points"
        marker.id = 0
        marker.type = Marker.POINTS
        marker.action = Marker.ADD
        marker.scale.x = 0.05
        marker.scale.y = 0.05
        marker.color.r = 1.0
        marker.color.g = 0.0
        marker.color.b = 0.0
        marker.color.a = 1.0

        for u,v in proj_points:
            marker.points.append(Point(x=float(u), y=float(v), z=0.0))

        marker_array.markers.append(marker)
        self.pub_marker.publish(marker_array)

    def project_points(self, points, calib):
        # 构造齐次坐标
        pts_homo = np.hstack((points, np.ones((points.shape[0],1))))
        R0 = np.eye(4); R0[:3,:3] = calib['R0']
        Tr = np.eye(4); Tr[:3,:] = calib['Tr_velo2cam']
        P2 = calib['P2']
        proj = (P2 @ R0 @ Tr @ pts_homo.T).T
        proj = proj[:, :2] / proj[:, 2:3]
        return proj
    
    def publish_box_marker(self, image_msg, box_vertices, edges):
        marker_array = MarkerArray()
        marker = Marker()
        marker.header.frame_id = "zwlidar"  # 使用激光雷达坐标系
        marker.header.stamp = self.get_clock().now().to_msg()
        marker.ns = "calib_box"
        marker.id = 1
        marker.type = Marker.LINE_LIST
        marker.action = Marker.ADD
        marker.scale.x = 0.1  # 线条粗细
        marker.color.r = 0.0
        marker.color.g = 1.0
        marker.color.b = 0.0
        marker.color.a = 1.0

        # 添加框的边
        for start_idx, end_idx in edges:
            start_point = box_vertices[start_idx]
            end_point = box_vertices[end_idx]
            marker.points.append(Point(x=float(start_point[0]), y=float(start_point[1]), z=float(start_point[2])))
            marker.points.append(Point(x=float(end_point[0]), y=float(end_point[1]), z=float(end_point[2])))

        marker_array.markers.append(marker)
        self.pub_marker.publish(marker_array)

def main(args=None):
    rclpy.init(args=args)
    node = CalibCheckNode()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()