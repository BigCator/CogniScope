import rclpy
from rclpy.node import Node
from sensor_msgs.msg import PointCloud2
from vision_msgs.msg import Detection3DArray, Detection3D, ObjectHypothesisWithPose
import numpy as np
import torch

# OpenPCDet 导入
from pcdet.config import cfg, cfg_from_yaml_file
from pcdet.models import build_network
from pcdet.datasets.kitti.kitti_dataset import KittiDataset
from pcdet.utils import common_utils

class OpenPCDetNode(Node):
    def __init__(self):
        super().__init__('openpcdet_node')

        # 订阅点云
        self.subscription = self.create_subscription(
            PointCloud2,
            '/kitti/velo/pointcloud',
            self.pointcloud_callback,
            10)

        # 发布 3D 检测结果
        self.publisher = self.create_publisher(Detection3DArray, '/lidar_detection3d', 10)

        # 加载模型配置
        config_file = '/workspace/OpenPCDet/tools/cfgs/kitti_models/pointpillar.yaml'
        cfg_from_yaml_file(config_file, cfg)
        self.model = build_network(model_cfg=cfg.MODEL, num_class=len(cfg.CLASS_NAMES), dataset=None)
        self.model.load_params_from_file(filename='/workspace/OpenPCDet/pointpillar.pth', logger=common_utils.create_logger())
        self.model.cuda()
        self.model.eval()

    def pointcloud_callback(self, msg: PointCloud2):
        # 转换 ROS 点云到 numpy
        cloud_array = np.frombuffer(msg.data, dtype=np.float32).reshape(-1, int(msg.point_step/4))[:, :3]

        # 构造输入 batch
        input_dict = {
            'points': torch.tensor(cloud_array, dtype=torch.float32).unsqueeze(0).cuda()
        }

        # 模型推理
        with torch.no_grad():
            pred_dicts, _ = self.model(input_dict)

        # 转换为 ROS 消息
        detection_array = Detection3DArray()
        detection_array.header = msg.header

        for det in pred_dicts[0]['pred_boxes']:
            detection = Detection3D()
            detection.bbox.center.position.x = float(det[0])
            detection.bbox.center.position.y = float(det[1])
            detection.bbox.center.position.z = float(det[2])
            detection.bbox.size.x = float(det[3])
            detection.bbox.size.y = float(det[4])
            detection.bbox.size.z = float(det[5])

            # 类别和置信度
            hypothesis = ObjectHypothesisWithPose()
            hypothesis.hypothesis.class_id = str(int(det[6]))  # 类别索引
            hypothesis.hypothesis.score = float(det[7])        # 置信度
            detection.results.append(hypothesis)

            detection_array.detections.append(detection)

        self.publisher.publish(detection_array)


def main(args=None):
    rclpy.init(args=args)
    node = OpenPCDetNode()
    rclpy.spin(node)
    rclpy.shutdown()
