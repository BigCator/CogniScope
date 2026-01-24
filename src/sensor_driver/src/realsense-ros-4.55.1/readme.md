/*启动相机节点*/
cd ~/ros2_ws
source install/local_setup.bash
ros2 run realsense2_camera realsense2_camera_node

/*ros2 run*/
ros2 run realsense2_camera realsense2_camera_node
/*ros2 launch*/
ros2 launch realsense2_camera rs_launch.py

#10帧
ros2 launch realsense2_camera rs_launch.py rgb_camera.color_profile:=1280x720x10 enable_color:=true

1. 安装依赖项
1.1 更新系统
BASH
sudo apt update
1.2 安装必需工具
BASH
sudo apt install -y \
  git python3-vcstool build-essential \
  libssl-dev libusb-1.0-0-dev pkg-config \
  libglfw3-dev libgl1-mesa-dev libglu1-mesa-dev
2. 安装librealsense2 SDK
2.1 添加Intel源并安装二进制包
BASH
sudo apt-key adv --keyserver keys.gnupg.net --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE
sudo add-apt-repository "deb https://librealsense.intel.com/Debian/apt-repo $(lsb_release -cs) main" -u
sudo apt install -y librealsense2 librealsense2-dev librealsense2-utils
2.2 验证SDK安装
连接相机后运行：
BASH
realsense-viewer
确认相机图像和深度数据正常显示。

3. 安装ROS2 RealSense驱动
3.1 创建工作空间
BASH
mkdir -p ~/realsense_ws/src
cd ~/realsense_ws/src

下载源码及后续操作见文档https://blog.csdn.net/weixin_43502307/article/details/144588393
该文档也是根据github的官方文档而来
下载源码，收尾呼应，拉到最前面下载4.55.1那个，下载到src里
安装依赖项
sudo apt-get install python3-rosdep -y
sudo rosdep init # "sudo rosdep init --include-eol-distros" for Foxy and earlier
rosdep update # "sudo rosdep update --include-eol-distros" for Foxy and earlier
rosdep install -i --from-path src --rosdistro $ROS_DISTRO --skip-keys=librealsense2 -y
接下来第二个问题
/RealsenseRos_ws$ rosdep install -i --from-path src --rosdistro $ROS_DISTRO --skip-keys=librealsense2 -y
ERROR: the following packages/stacks could not have their rosdep keys resolved
to system dependencies:
realsense2_description: Cannot locate rosdep definition for [xacro]
realsense2_camera: Cannot locate rosdep definition for [diagnostic_updater]
解决方案
sudo apt-get install ros-foxy-xacro
sudo apt-get install ros-foxy-diagnostic-updater

#humble安装遇见问题解决
sudo apt install ros-humble-librealsense2*

4、build构建
colcon build
5、源环境
ROS_DISTRO=<YOUR_SYSTEM_ROS_DISTRO>  # set your ROS_DISTRO: iron, humble, foxy
source /opt/ros/$ROS_DISTRO/setup.bash
cd ~/ros2_ws
. install/local_setup.bash


/*node找不到*/
ros2 daemon stop
ros2 daemon start
重启ros2守护进程

1280*720
1920*1080
