import os
from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch.actions import IncludeLaunchDescription
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch_ros.actions import Node

def generate_launch_description():
    package_name = 'pcdet_ros2'
    package_dir = get_package_share_directory(package_name)

    # 引用已有的 pcdet.launch.py
    pcdet_launch = IncludeLaunchDescription(
        PythonLaunchDescriptionSource(
            os.path.join(package_dir, 'launch', 'pcdet.launch.py')
        )
    )

    # tracker 节点
    pcdet_tracker = Node(
        package=package_name,
        executable='pcdet_tracker',
        name='pcdet_tracker',
        output='screen',
        parameters=[{
            'tracker_cfg':  '/workspace/CogniScope/src/pcdet_ros2/config/tracker.yaml',
            'tracker_cat': 'Car'
        }],
        remappings=[("input", 'pcd_cloud_detections'),
                    ("output", 'pcd_cloud_tracks')]
    )

    ld = LaunchDescription()
    ld.add_action(pcdet_launch)
    ld.add_action(pcdet_tracker)

    return ld
