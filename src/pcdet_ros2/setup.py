from setuptools import setup
import glob
import os

package_name = 'pcdet_ros2'

setup(
    name=package_name,
    version='0.0.1',
    packages=[package_name],
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
        ('share/' + package_name + '/launch',
            glob.glob(os.path.join('launch', '*'))),
        ('share/' + package_name + '/config',
            glob.glob(os.path.join('config', '*'))),
        ('share/' + package_name + '/cfgs',
            glob.glob(os.path.join('cfgs', '*.*'))),
        ('share/' + package_name + '/cfgs/custom_models',
            glob.glob(os.path.join('cfgs/custom_models', '*.*'))),
        ('share/' + package_name + '/cfgs/dataset_configs',
            glob.glob(os.path.join('cfgs/dataset_configs', '*.*'))),
        ('share/' + package_name + '/cfgs/kitti_models',
            glob.glob(os.path.join('cfgs/kitti_models', '*.*'))),
        ('share/' + package_name + '/cfgs/lyft_models',
            glob.glob(os.path.join('cfgs/lyft_models', '*.*'))),
        ('share/' + package_name + '/cfgs/nuscenes_models',
            glob.glob(os.path.join('cfgs/nuscenes_models', '*.*'))),
        ('share/' + package_name + '/cfgs/once_models',
            glob.glob(os.path.join('cfgs/once_models', '*.*'))),
        ('share/' + package_name + '/cfgs/waymo_models',
            glob.glob(os.path.join('cfgs/waymo_models', '*.*'))),
        ('share/' + package_name + '/checkpoints',
            glob.glob(os.path.join('checkpoints', '*'))),
    ],
    install_requires=['setuptools', 'pyquaternion', 'pcdet'],
    zip_safe=True,
    maintainer='Shrijal Pradhan',
    maintainer_email='pradhan.shrijal@gmail.com',
    description='ROS 2 Wrapper for OpenPCDet',
    license='MIT',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
            'pcdet = pcdet_ros2.pcdet_node:main',
            'pcdet_tracker = pcdet_ros2.pcdet_tracker:main',
        ],
    },

)
