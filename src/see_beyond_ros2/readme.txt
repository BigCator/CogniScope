#docker启动
docker start ros2_yolo
docker exec -it ros2_yolo /bin/bash
cd /workspace/ros2_yolo/

#编译指令
colcon build --symlink-install --packages-select see_beyond_ros2 
source install/setup.bash
ros2 launch see_beyond_ros2 see_beyond_ros2.launch.py
ros2 topic echo /fusion_detections

#启动数据包 /carla_lidar /carla_radar_1
ros2 bag play /workspace/ros2_yolo/rosbag2/carla/rosbag2_2026_01_04-10_32_03 -l

#查看单帧效果
python /home/dell/ljw/code/ros2_yolo/src/see_test/tools/demo_picture.py \
   --ckpt /home/dell/ljw/code/ros2_yolo/src/see_test/output/car_pedes/carla_initial/eval/eval_with_train/best_eval/best_epoch_checkpoint.pth  \
   --data_path /workspace/ros2_yolo/src/see_test/data/lidar/training/velodyne/003150.bin

#验证推理 精度70
python3 tools/eval_single_epoch.py \
--cfg_file /home/dell/ljw/code/ros2_yolo/src/see_test/output/car_pedes/TransNeXt_0115/car_pedes.yaml \
--ckpt /home/dell/ljw/code/ros2_yolo/src/see_test/output/car_pedes/TransNeXt_0115/eval/eval_with_train/best_eval/best_epoch_checkpoint.pth \
--pretrained_model /home/dell/ljw/code/ros2_yolo/src/see_test/output/car_pedes/TransNeXt_0115/eval/eval_with_train/best_eval/best_epoch_checkpoint.pth


#报错解决

1.colcon build --packages-select see_beyond_ros2失败
在所有非 ROS 包目录里加 COLCON_IGNORE，ROS 2 的构建工具 colcon 里，有一个约定：
如果某个目录下存在 COLCON_IGNORE 文件，colcon 在扫描工作空间时就会 跳过这个目录，不会尝试把它识别为一个 ROS 包。
cd /workspace/ros2_yolo/src
touch driver_ros1/COLCON_IGNORE
touch OpenPCDet/COLCON_IGNORE
touch see_test/COLCON_IGNORE

2.只清理某个包的构建缓存
rm -rf build/see_beyond_ros2 install/see_beyond_ros2 log/see_beyond_ros2
colcon build --packages-select see_beyond_ros2

3.在 ROS 2 的 ament_python 包里，resource/<包名> 文件是必须的，它用来让 colcon 识别这个 Python 包。
完整目录结构应该是
ros2_yolo/src/see_beyond_ros2/
  ├── package.xml
  ├── setup.py
  ├── resource/
  │   └── see_beyond_ros2        # 空文件，名字必须和包名一致
  ├── see_beyond_ros2/
  │   ├── __init__.py
  │   ├── see_beyond_ros2_node.py
  │   ├── fusion_detector.py
  │   └── msg_utils.py
  └── launch/
      └── see_beyond_ros2.launch.py

#被识别成 catkin 包
<?xml version="1.0"?>
<package format="3">
  <name>see_beyond_ros2</name>
  <version>0.0.1</version>
  <description>ROS2 wrapper for LiDAR+Radar fusion using modified OpenPCDet</description>
  <maintainer email="your_email@example.com">jiawei</maintainer>
  <license>Apache-2.0</license>

  <buildtool_depend>ament_python</buildtool_depend>
  <exec_depend>rclpy</exec_depend>
  <exec_depend>sensor_msgs</exec_depend>
  <exec_depend>vision_msgs</exec_depend>
  <exec_depend>std_msgs</exec_depend>
  <exec_depend>message_filters</exec_depend>

  <export>
    <build_type>ament_python</build_type> ##必须强制声明类型
  </export>
</package>
