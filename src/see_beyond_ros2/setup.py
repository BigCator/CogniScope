
# from setuptools import setup, find_packages
# from setuptools.command.develop import develop
# from setuptools.command.install import install
# import os
# from glob import glob

# package_name = 'see_beyond_ros2'

# class PostInstallCommand(install):
#     """安装后创建必要的目录和符号链接"""
#     def run(self):
#         # 首先执行标准安装
#         install.run(self)
        
#         # 获取安装目录
#         install_dir = self.install_lib
#         if install_dir is None:
#             # 尝试从其他位置获取
#             for item in self.get_outputs():
#                 if 'see_beyond_ros2' in item:
#                     install_dir = os.path.dirname(item)
#                     break
        
#         print(f"安装目录: {install_dir}")
        
#         # 创建符号链接
#         bin_dir = os.path.join(self.install_scripts, '..', '..', 'bin')
#         libexec_dir = os.path.join(self.install_scripts, '..', '..', 'lib', package_name)
        
#         # 确保目录存在
#         os.makedirs(libexec_dir, exist_ok=True)
        
#         # 创建符号链接
#         target = os.path.join(bin_dir, 'see_beyond_node')
#         link = os.path.join(libexec_dir, 'see_beyond_node')
        
#         if os.path.exists(target) and not os.path.exists(link):
#             try:
#                 os.symlink(os.path.relpath(target, os.path.dirname(link)), link)
#                 print(f"已创建符号链接: {link} -> {target}")
#             except Exception as e:
#                 print(f"创建符号链接失败: {e}")

# setup(
#     name=package_name,
#     version='0.0.1',
#     packages=[package_name],
#     data_files=[
#         ('share/ament_index/resource_index/packages',
#             ['resource/' + package_name]),
#         ('share/' + package_name, ['package.xml']),
#         (os.path.join('share', package_name, 'launch'), glob('launch/*.launch.py')),
#     ],
#     install_requires=['setuptools'],
#     zip_safe=False,
#     maintainer='jiawei',
#     maintainer_email='your_email@example.com',
#     description='ROS2 wrapper for LiDAR+Radar fusion using modified OpenPCDet',
#     license='Apache-2.0',
#     tests_require=['pytest'],
#     entry_points={
#         'console_scripts': [
#             'see_beyond_node = see_beyond_ros2.see_beyond_ros2_node:main',
#         ],
#     },
#     cmdclass={
#         'install': PostInstallCommand,
#     },
# )

from setuptools import setup, find_packages
from setuptools.command.develop import develop
from setuptools.command.install import install
import os
from glob import glob
import sys

package_name = 'see_beyond_ros2'

def find_workspace_root():
    """动态查找ROS2工作空间根目录"""
    current_dir = os.path.dirname(os.path.abspath(__file__))
    
    # 向上查找包含src目录的目录（ROS2工作空间特征）
    while current_dir != '/':
        src_dir = os.path.join(current_dir, 'src')
        if os.path.exists(src_dir) and os.path.isdir(src_dir):
            return current_dir
        current_dir = os.path.dirname(current_dir)
    
    # 如果找不到，使用当前目录的父目录
    return os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

class PostInstallCommand(install):
    """安装后创建必要的目录和符号链接"""
    def run(self):
        # 首先执行标准安装
        install.run(self)
        
        print("=== PostInstallCommand 开始 ===")
        
        try:
            # 动态查找工作空间
            workspace_root = find_workspace_root()
            print(f"检测到工作空间: {workspace_root}")
            
            # 构建路径
            bin_dir = os.path.join(workspace_root, 'install', package_name, 'bin')
            libexec_dir = os.path.join(workspace_root, 'install', package_name, 'lib', package_name)
            
            print(f"bin_dir: {bin_dir}")
            print(f"libexec_dir: {libexec_dir}")
            
            # 确保目录存在
            os.makedirs(libexec_dir, exist_ok=True)
            
            # 创建符号链接
            target = os.path.join(bin_dir, 'see_beyond_node')
            link = os.path.join(libexec_dir, 'see_beyond_node')
            
            print(f"target: {target}")
            print(f"link: {link}")
            
            if os.path.exists(target):
                if os.path.exists(link):
                    # 如果链接已存在，删除后重新创建
                    if os.path.islink(link):
                        os.unlink(link)
                    else:
                        os.remove(link)
                
                try:
                    # 计算相对路径并创建符号链接
                    relative_path = os.path.relpath(target, os.path.dirname(link))
                    os.symlink(relative_path, link)
                    print(f"✓ 已创建符号链接: {link} -> {relative_path}")
                except Exception as e:
                    print(f"✗ 创建符号链接失败: {e}")
                    # 尝试使用绝对路径
                    try:
                        os.symlink(target, link)
                        print(f"✓ 已使用绝对路径创建符号链接: {link} -> {target}")
                    except Exception as e2:
                        print(f"✗ 绝对路径也失败: {e2}")
            else:
                print(f"✗ 目标文件不存在: {target}")
                # 列出bin目录内容以便调试
                if os.path.exists(bin_dir):
                    print(f"bin目录内容: {os.listdir(bin_dir)}")
                
        except Exception as e:
            print(f"✗ PostInstallCommand 执行出错: {e}")
            
        print("=== PostInstallCommand 结束 ===")

setup(
    name=package_name,
    version='0.0.1',
    packages=[package_name],
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
        (os.path.join('share', package_name, 'launch'), glob('launch/*.launch.py')),
    ],
    install_requires=['setuptools'],
    zip_safe=False,
    maintainer='jiawei',
    maintainer_email='your_email@example.com',
    description='ROS2 wrapper for LiDAR+Radar fusion using modified OpenPCDet',
    license='Apache-2.0',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
            'see_beyond_node = see_beyond_ros2.see_beyond_ros2_node:main',
        ],
    },
    cmdclass={
        'install': PostInstallCommand,
    },
)

