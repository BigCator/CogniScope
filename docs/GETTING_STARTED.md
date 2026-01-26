# Getting Started with CogniScope

CogniScope 是一个面向具身智能与自动驾驶的工程级多模态感知系统。本文档用于指导你快速拉起运行环境并复现核心功能。
# 0. 环境要求
## 硬件
- NVIDIA GPU（推荐 ≥ 24GB 显存）
- 支持 CUDA 12.x
## 软件
- Ubuntu 20.04 / 22.04
- Docker ≥ 20.10
- NVIDIA Container Toolkit

# 1. 获取项目代码
```bash
git clone git@github.com:BigCator/CogniScope.git
cd CogniScope
```
# 2. 使用官方 Docker 镜像（推荐）
## 2.1 拉取镜像
```bash
docker pull ghcr.io/bigcator/cogniscope:v1
```
镜像内已集成：
- CUDA + cuDNN
- ROS 2 Humble
- PyTorch
- OpenPCDet
- MMDetection3D
- Ultralytics YOLOv8

常用工程依赖
## 2.2 启动容器
```bash
docker run --gpus all --shm-size=32g -it \
  --name cogniscope_v1 \
  -v /home:/home \
  -v $(pwd):/workspace/CogniScope \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=$DISPLAY \
  --ipc host \
  --network host \
  --privileged \
  --cap-add=SYS_PTRACE \
  ghcr.io/bigcator/cogniscope:v1 \
  /bin/
```
进入容器后：
```bash
cd /workspace/CogniScope
```
# ⚠️ 注意事项（非常重要）

❗ 不要直接在整个工作空间执行 colcon build
本项目包含大量 非 ROS 包目录，需要显式忽略。

# 3. ROS 2 工作空间约定
```plaintext
/workspace/CogniScope
├── src/          # ROS2 与算法源码
├── rosbag2/      # 数据包
└── tools/        # 标注与数据处理
```
# 4. 忽略非 ROS 包（必须）
```bash
cd /workspace/CogniScope/src

touch AB3DMOT-master/COLCON_IGNORE
touch driver_ros1/COLCON_IGNORE
touch Infrared-Small-Target-Detection-master/COLCON_IGNORE
touch mmdetection3d/COLCON_IGNORE
touch multispectral-object-detection-main/COLCON_IGNORE
touch multispectral-object-detection-main-prune/COLCON_IGNORE
touch OpenPCDet/COLCON_IGNORE
touch see_test/COLCON_IGNORE
```
# 5. 传感器驱动（ROS2）
## 5.1 编译驱动
```bash
cd src/sensor_driver
colcon build
source install/setup.bash
```
## 5.2 启动相机（示例）
```bash
ros2 launch realsense2_camera rs_launch.py
```
## 5.3 一键启动所有传感器
```bash
sh src/sensor_driver/scripts/start_sensors_tmux.sh
```
# 6. 核心功能快速体验
## 6.1 纯激光雷达感知（OpenPCDet + AB3DMOT）
编译
```bash
cd /workspace/CogniScope/
colcon build --symlink-install --packages-select ros2_numpy pcdet_ros2
source install/setup.bash
```
播放数据包
```bash
ros2 bag play src/ultralytics_ros/ros2bag/kitti_2011_09_26_drive_0106_synced --clock --loop
```

启动感知节点
```bash
ros2 launch pcdet_ros2 pcdet_with_tracking.launch.py
```

Rviz 2 可视化
```bash
rviz2
```
## 6.2 激光雷达 + 视觉融合（MMDetection3D + AB3DMOT）
编译
```bash
cd /workspace/CogniScope/
colcon build --symlink-install --packages-select fusiondet
source install/setup.bash
```
运行
```bash
ros2 run fusiondet fusiondet
```
Rviz 2 可视化
```bash
rviz2
```
## 6.3 纯视觉感知（YOLOv8）
编译
```bash
cd /workspace/CogniScope/
colcon build --symlink-install --packages-select ultralytics_ros
source install/setup.bash
```
运行
```bash
ros2 launch ultralytics_ros kitti_tracker.launch.xml
```
Rviz 2 可视化
```bash
rviz2
```
## 6.4 激光雷达 + 4D 毫米波雷达融合
编译
```bash
cd /workspace/CogniScope/
colcon build --symlink-install --packages-select see_beyond_ros2
source install/setup.bash
```
播放数据包
```bash
ros2 bag play rosbag2/carla/rosbag2_2026_01_04-10_32_03 -l
```
启动融合节点
```bash
ros2 launch see_beyond_ros2 see_beyond_ros2.launch.py
```
Rviz 2 可视化
```bash
rviz2
```

## 6.5 红外小目标检测
```bash
cd src/Infrared-Small-Target-Detection-master
python demo.py
```
6.6 可见光 + 红外融合检测
```bash
cd src/multispectral-object-detection-main
python detect_twostream.py
```

# 7. 常用工程技巧
## Docker 保存与迁移
```bash
#保存容器变化，生成新的镜像
docker commit cogniscope_v1 cogniscope:v1
#保存镜像为压缩文件
docker save -o cogniscope_v1.tar cogniscope:v1
#在另外一台计算机上恢复镜像
docker load -i my_image.tar
```
# 8. FAQ
## ❓ colcon build 失败？

确认所有非 ROS 包已添加 COLCON_IGNORE

## ❓ 如何对第三方库进行编译？
```bash
cd /workspace/CogniScope/第三方库目录
python setup.py develop
```

## 📌 结语

CogniScope 并不是一个 Demo 工程，而是一个 可持续演进的具身智能感知系统工程框架。
建议你从 单模态 → 融合 → 系统级联调 逐步深入。
