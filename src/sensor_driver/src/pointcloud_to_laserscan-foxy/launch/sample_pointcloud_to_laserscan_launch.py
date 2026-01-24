from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node


def generate_launch_description():
    return LaunchDescription([
        DeclareLaunchArgument(
            name='scanner', default_value='scanner',
            description='Namespace for sample topics'
        ),
#        Node(
#            package='pointcloud_to_laserscan', executable='dummy_pointcloud_publisher',
#            remappings=[('cloud', [LaunchConfiguration(variable_name='scanner'), '/cloud'])],
#            parameters=[{'cloud_frame_id': 'cloud', 'cloud_extent': 2.0, 'cloud_size': 500}],
#            name='cloud_publisher'
#        ),
        Node(
            package='tf2_ros',
            executable='static_transform_publisher',
            name='static_transform_publisher',
            arguments=['0', '0', '0', '0', '0', '0', '1','map', 'zwlidar'],
            output='screen',  # 添加输出
            sigterm_timeout='30',  # 设置终止超时
            sigkill_timeout='30'
        ),
        Node(
            package='pointcloud_to_laserscan',
            executable='pointcloud_to_laserscan_node',
            remappings=[('cloud_in', '/zw040201/lidar_main_pointcloud'),
                        ('scan', '/m1/scan')],
            parameters=[{
                'target_frame': 'zwlidar',
                'transform_tolerance': 0.01,
                'min_height': -0.50,
                'max_height': -0.0,
                'angle_min': -1.0472,  # -60度
                'angle_max': 1.0472,  # 60度
                'angle_increment': 0.00349,  # 0.2度
                'scan_time': 0.1,
                'range_min': 0.3,
                'range_max': 200.0,
                'use_inf': True,
                'inf_epsilon': 1.0
            }],
            name='pointcloud_to_laserscan'
        ),
        Node(
            package='pointcloud_to_laserscan',
            executable='laserscan_to_occupancy_grid',
            name='laserscan_to_occupancy',
            remappings=[
                ('scan', '/m1/scan'),  # 订阅点云转激光节点输出的扫描数据
                ('occupancy_grid', '/m1/occupancy_grid')  # 发布占据地图
            ],
            parameters=[{
                'map_resolution': 0.05,   # 地图分辨率 (0.05米/像素)
                'map_width': 70.0,        # 地图宽度 (20米)
                'map_height': 30.0,       # 地图高度 (20米)
                'obstacle_threshold': 0.5, # 障碍物判定阈值
    		'dilation_radius': 0.1,     # 膨胀半径（米）
    		'max_dilation_distance': 70.0, # 最大膨胀距离（米）
    		'min_obstacle_value': 100   # 膨胀区域最小占据值（0-100）
            }],
            output='screen'
        )
    ])
