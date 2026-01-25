import os

from ament_index_python.packages import get_package_share_directory

from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, GroupAction, SetEnvironmentVariable
from launch.conditions import IfCondition
from launch.substitutions import LaunchConfiguration, PythonExpression
from launch_ros.actions import Node
from nav2_common.launch import RewrittenYaml

def generate_launch_description():
    package_name = 'pcdet_ros2'
    package_dir = get_package_share_directory(package_name)
    config_file = 'pcdet_pvrcnn.param.yaml'

    namespace = LaunchConfiguration('namespace')
    params_file = LaunchConfiguration('params_file')
    input_topic = LaunchConfiguration('input_topic')
    output_topic = LaunchConfiguration('output_topic')

    configured_params = RewrittenYaml(
        source_file=params_file,
        root_key=namespace,
        param_rewrites={}
    )

    declare_namespace_cmd = DeclareLaunchArgument(
        'namespace',
        default_value='',
        description='Top-level namespace')

    declare_params_file_cmd = DeclareLaunchArgument(
        'params_file',
        default_value=os.path.join(package_dir, 'config', config_file),
        description='Full path to the ROS 2 parameters file to use for the launched nodes'
    )

    declare_input_topic_cmd = DeclareLaunchArgument(
        'input_topic',
        default_value='/kitti/velo/pointcloud',
        description='Input Point Cloud'
    )
    #'/kitti/velo/pointcloud' '/carla_lidar' '/zw040201/lidar_main_pointcloud'

    declare_output_topic_cmd = DeclareLaunchArgument(
        'output_topic',
        default_value='pcd_cloud_detections',
        description='Output Object Detections'
    )

    pcdet = Node(
        package=package_name,
        executable='pcdet',
        name='pcdet',
        output='screen',
        parameters=[configured_params,
                    {'package_folder_path': package_dir}],
        remappings=[("input", input_topic), 
                    ("output", output_topic)]            
    )

    ld = LaunchDescription()

    ld.add_action(declare_namespace_cmd)
    ld.add_action(declare_params_file_cmd)
    ld.add_action(declare_input_topic_cmd)
    ld.add_action(declare_output_topic_cmd)
    ld.add_action(pcdet)

    return ld