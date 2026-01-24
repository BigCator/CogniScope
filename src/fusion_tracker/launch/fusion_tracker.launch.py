from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package='fusion_tracker',
            executable='fusion_tracker_node',
            name='fusion_tracker',
            output='screen',
            parameters=[
                {
                    'cfg_path': '/workspace/ros2_yolo/src/mmdetection3d/configs/mvxnet/mvxnet_fpn_dv_second_secfpn_8xb2-80e_kitti-3d-3class.py',
                    'ckpt_path': '/workspace/ros2_yolo/src/fusion_tracker/models/mvxnet_fpn_dv_second_secfpn_8xb2-80e_kitti-3d-3class-8963258a.pth',
                    'tracker_cfg': '/workspace/ros2_yolo/src/pcdet_ros2/config/tracker.yaml',
                    'tracker_cat': 'Car'
                }
            ]
        )
    ])
