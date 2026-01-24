import rclpy
from rclpy.node import Node
from sensor_msgs.msg import PointCloud2
from vision_msgs.msg import Detection3DArray
import message_filters

from .fusion_detector import FusionDetector
from .msg_utils import convert_to_detection3darray
from visualization_msgs.msg import Marker, MarkerArray
from .msg_utils import convert_to_markerarray

class SeeBeyondNode(Node):
    def __init__(self):
        super().__init__('see_beyond_ros2_node')

        # 参数声明
        self.declare_parameter(
            'cfg_file',
            # '/workspace/ros2_yolo/src/see_test/tools/cfgs/kitti_models/car_pedes.yaml'
            '/workspace/CogniScope/src/see_test/output/car_pedes/TransNeXt_0115/car_pedes.yaml'
        )
        self.declare_parameter(
            'ckpt_file',
            # '/workspace/ros2_yolo/src/see_test/output/car_pedes/carla_initial/eval/eval_with_train/best_eval/best_epoch_checkpoint.pth'
            '/workspace/CogniScope/src/see_test/output/car_pedes/TransNeXt_0115/eval/eval_with_train/best_eval/best_epoch_checkpoint.pth'
        )

        cfg_file = self.get_parameter('cfg_file').value
        ckpt_file = self.get_parameter('ckpt_file').value

        self.get_logger().info(f'Using cfg: {cfg_file}')
        self.get_logger().info(f'Using ckpt: {ckpt_file}')

        # 初始化模型（耗时操作）
        self.detector = FusionDetector(cfg_file, ckpt_file)
        self.get_logger().info('FusionDetector initialized')

        # 同步订阅 LiDAR & Radar
        lidar_sub = message_filters.Subscriber(
            self, PointCloud2, '/carla_lidar'
        )
        radar_sub = message_filters.Subscriber(
            self, PointCloud2, '/carla_radar_1'
        )

        self.ts = message_filters.ApproximateTimeSynchronizer(
            [lidar_sub, radar_sub],
            queue_size=10,
            slop=0.1
        )
        self.ts.registerCallback(self.sync_callback)

        # 发布检测结果
        # self.result_pub = self.create_publisher(
        #     Detection3DArray,
        #     'fusion_detections',
        #     10
        # )
        self.marker_pub = self.create_publisher( MarkerArray, 'fusion_markers', 10 )

    def sync_callback(self, lidar_msg, radar_msg):
        pred_dicts = self.detector.run_inference(lidar_msg, radar_msg)

        det_msg = convert_to_detection3darray(
            pred_dicts,
            stamp=lidar_msg.header.stamp,
            frame_id=lidar_msg.header.frame_id
        )

        marker_msg = convert_to_markerarray(det_msg)

        # -------------------------
        # 先清除上一帧的所有 Marker
        # -------------------------
        clear_msg = MarkerArray()
        clear_marker = Marker()
        clear_marker.action = Marker.DELETEALL
        clear_msg.markers.append(clear_marker)
        self.marker_pub.publish(clear_msg)

        # -------------------------
        # 再发布当前帧的 Marker
        # -------------------------
        self.marker_pub.publish(marker_msg)


def main(args=None):
    rclpy.init(args=args)
    node = SeeBeyondNode()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()