from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node


def generate_launch_description():
    remote_ip = LaunchConfiguration('remote_ip')
    remote_port = LaunchConfiguration('remote_port')
    local_port = LaunchConfiguration('local_port')
    request_id = LaunchConfiguration('request_id')
    publish_rate_hz = LaunchConfiguration('publish_rate_hz')

    enable_imu = LaunchConfiguration('enable_imu')
    enable_wheel = LaunchConfiguration('enable_wheel')
    enable_gps_fix = LaunchConfiguration('enable_gps_fix')
    enable_gps_vel = LaunchConfiguration('enable_gps_vel')

    return LaunchDescription([
        # 网络参数
        DeclareLaunchArgument(
            'remote_ip',
            default_value='192.168.17.3',
            description='Chassis UDP server IP'),
        DeclareLaunchArgument(
            'remote_port',
            default_value='8000',
            description='Chassis UDP server port'),
        DeclareLaunchArgument(
            'local_port',
            default_value='8001',
            description='Local UDP bind port'),
        DeclareLaunchArgument(
            'request_id',
            default_value='39',  # 0xFFFF  33
            description='Request frame ID (65535 means all frames)'),
        DeclareLaunchArgument(
            'publish_rate_hz',
            default_value='100.0',
            description='Publish (request) rate in Hz'),

        # 功能开关
        DeclareLaunchArgument(
            'enable_imu',
            default_value='true',
            description='Enable publishing IMU topic'),
        DeclareLaunchArgument(
            'enable_wheel',
            default_value='false',
            description='Enable publishing wheel speed topic'),
        DeclareLaunchArgument(
            'enable_gps_fix',
            default_value='true',
            description='Enable publishing GPS fix topic'),
        DeclareLaunchArgument(
            'enable_gps_vel',
            default_value='true',
            description='Enable publishing GPS velocity topic'),

        Node(
            package='imu_speed',
            executable='imu_speed_node',
            name='imu_speed_node',
            output='screen',
            parameters=[{
                'remote_ip': remote_ip,
                'remote_port': remote_port,
                'local_port': local_port,
                'request_id': request_id,
                'publish_rate_hz': publish_rate_hz,
                'enable_imu': enable_imu,
                'enable_wheel': enable_wheel,
                'enable_gps_fix': enable_gps_fix,
                'enable_gps_vel': enable_gps_vel,
            }]
        ),
    ])


