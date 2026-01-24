from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package='see_beyond_ros2',
            executable='see_beyond_node',   # ✅ 必须是 setup.py 里的名字
            name='see_beyond_ros2_node',
            output='screen',
            parameters=[
                {
                    'cfg_file': '/workspace/CogniScope/src/see_test/tools/cfgs/kitti_models/car_pedes.yaml'
                },
                {
                    'ckpt_file': '/workspace/CogniScope/src/see_test/output/car_pedes/carla_initial/eval/eval_with_train/best_eval/best_epoch_checkpoint.pth'
                }
            ],
            remappings=[
                ('/carla_lidar', '/carla_lidar'),
                ('/carla_radar_1', '/carla_radar_1')
            ]
        )
    ])
