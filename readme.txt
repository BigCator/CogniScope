"""
时间：2026.1.13
完成：
1 底层支撑环境，docker容器、ros2humble安装、pcd框架安装，mmdetection3d安装，ultralytics安装
2 传感器驱动，相机（已验证）、激光雷达、4dmm波雷达、红外相机、imu、gnss驱动安装完成 
  地址：/workspace/CogniScope/src/sensor_driver
3 数据标注工具
  3.1 SUSTechPOINTS点云数据标注软件 地址：/workspace/CogniScope/tools/SUSTechPOINTS/
4 多模态感知算法层
  4.1 纯激光雷达感知 地址：/workspace/CogniScope/src/pcdet_ros2
      激光雷达单模态检测/跟踪/速度检测，依托pcdet_pvrcnn检测模型+AB3DMOT跟踪模型
  4.2 激光雷达视觉融合 地址：/workspace/CogniScope/src/fusiondet
      激光雷达+视觉检测/跟踪/速度检测，依托mvxnet检测模型（可训练）+AB3DMOT跟踪模型
  4.3 纯视觉感知
     4.3.1 yolov8视觉目标检测与跟踪 地址：/workspace/CogniScope/src/ultralytics_ros
     4.3.2 yolox + masa视觉目标检测与跟踪 地址：/workspace/CogniScope/src/masa_track
5 4d毫米波和雷达融合检测 
   训练测试地址：/workspace/CogniScope/src/see_test
   ros2地址：/workspace/CogniScope/src/see_beyond_ros2
6 红外小目标检测 地址：/workspace/CogniScope/src/PSAS_ISTD
7 可见光和红外融合目标检测 地址：/workspace/CogniScope/src/DDFN
8 carla模拟环境 地址：/workspace/CogniScope/src/carla_api

updates：
- 2026.1.29
1 增加4.3.2小节yolox + masa视觉目标检测与跟踪
2 增加第8节carla_api，完成感知系统与carla模拟环境的交互
"""

CogniScope/                     # 项目根目录 
├── src/                   
│   ├── AB3DMOT-master/         # 跟踪模块
│   ├── DDFN                    # 可见光 + 红外目标检测
│   ├── driver_ros1/            # ROS 1传感器驱动模块(弃用)
│   ├── fusiondet/              # 激光雷达 + 视觉可见光融合检测/跟踪/动静态识别/
│   ├── PSAS_ISTD/              # 红外小目标检测
│   ├── OpenPCDet/              # OpenPCDet 框架
│   ├── pcdet_ros2              # 纯激光雷达检测/跟踪/动静态识别
│   ├── ros2_numpy              # ros2_numpy库
│   ├── see_beyond_ros2/        # 激光雷达 + 4D 毫米波融合检测 ROS2 节点
│   ├── see_test/               # 激光雷达 + 4D 毫米波融合检测
│   ├── sensor_driver           # ROS 2传感器驱动模块
│   ├── ultralytics_ros         # 纯视觉可见光检测/跟踪模块 ROS2 节点
│   └── vision_msgs_rviz_plugins-humble          # RVIZ可视化插件
│ 
├── rosbag2                     # 数据包
├── tools/                      # 标注工具与数据处理脚本
├── README.md                   # 项目说明文档
└── .gitignore                  # Git 忽略规则

1.底层支撑环境，
docker容器、ros2humble安装、pcd框架安装，mmdetection3d安装，ultralytics安装
1.1docker容器
docker pull pytorch/pytorch:2.9.1-cuda12.6-cudnn9-runtime
docker pull alpacazip/ultralytics_ros:humble
docker pull nvcr.io/nvidia/pytorch:24.01-py3
https://docs.nvidia.com/deeplearning/frameworks/pytorch-release-notes/index.html


#注意！注意！注意！
1 不要直接colcon build

#小鱼香安装humble/换源
wget http://fishros.com/install -O fishros && . fishros
#docker构建
docker run --gpus all --shm-size=32g -it --name cogniscope_v1 \
    -v /home:/home \
    -v /home/dell/ljw/code/CogniScope:/workspace/CogniScope \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    --ipc host \
    --network host \
    --privileged --cap-add=SYS_PTRACE \
    --entrypoint /bin/bash \
    cogniscope:v1 

--volume=/dev/shm:/dev/shm \

#docker启动
docker start cogniscope_v1
docker exec -it cogniscope_v1 /bin/bash
cd /workspace/CogniScope/

#新包建立示例（fusion_tracker）
ros2 pkg create fusion_tracker --build-type ament_python --dependencies rclpy vision_msgs visualization_msgs
colcon build --symlink-install --packages-select fusion_tracker
colcon build --symlink-install --packages-select fusiondet
source install/setup.bash
ros2 run fusion_tracker fusion_tracker_node
ros2 launch fusion_tracker fusion_tracker.launch.py

#装包镜像源选择
https://pypi.tuna.tsinghua.edu.cn/simple
https://pypi.mirrors.ustc.edu.cn/simple/

#环境配置
pip install -e src/mmdetection3d/
numba=0.57.0
numpy==1.23.5
numpy==1.26.4
sudo apt-mark hold python3-numpy
sudo apt-mark unhold python3-numpy

#.bashrc配置（详见.bashrc文件）
source /opt/ros/humble/setup.bash
source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash
#source ~/colcon_ws/install/setup.bash
source /workspace/ros2_yolo/install/setup.bash
export ROS_DOMAIN_ID=10
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
#export RMW_IMPLEMENTATION=rmw_fastrtps_cpp
export CUDA_HOME=/usr/local/cuda-12.1
export PATH=$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH
export PYTHONPATH=$PYTHONPATH:/workspace/ros2_yolo/src/AB3DMOT-master/Xinshuo_PyToolbox
export DISPLAY=:1

#robotc外参
rotation
-0.0164775519104441	0.0204439439216114	0.999655208279319
-0.999864213950073	-0.000127296518460974	-0.0164783936595768
-0.000209630728219326	-0.999790992634224	0.0204432654542123

translation
0.0248281187334569	0.180992434699907	0.0426315478945069

#方案1
# 保存镜像为 tar 文件
docker save -o cogniscope_v1.tar cogniscope:v1
# 压缩成 gz 文件
gzip my_image.tar
# 恢复镜像
docker load -i my_image.tar

#方案2
# 导出正在运行的容器
docker export -o cogniscope_v1.tar my_container_id
# 压缩gz 文件
gzip my_container.tar
# 恢复容器
docker import my_container.tar my_image:latest

#保存容器变化
docker commit cogniscope_v1 cogniscope:v1

2 传感器驱动
相机（已验证）、激光雷达、4dmm波雷达、红外相机、imu、gnss驱动安装完成 地址：/workspace/ros2_yolo/src/sensor_driver
#传感器驱动编译
cd sensor_driver
colcon build

#相机驱动启动
cd /workspace/CogniScope/src/sensor_driver
source install/setup.bash
ros2 launch realsense2_camera rs_launch.py

#一键启动脚本
sh /workspace/ros2_yolo/src/sensor_driver/scripts/start_sensors_tmux.sh

4.1 激光雷达单模态检测/跟踪/速度检测，依托pcdet_pvrcnn检测模型+AB3DMOT跟踪模型
#编译指令
colcon build --symlink-install --packages-select ros2_numpy pcdet_ros2
#docker启动
docker start cogniscope_v1
docker exec -it cogniscope_v1 /bin/bash
cd /workspace/CogniScope
#播放数据包
ros2 bag play /workspace/CogniScope/src/ultralytics_ros/ros2bag/kitti_2011_09_26_drive_0106_synced --clock --loop
#启动rviz
rviz2 
#运行代码
ros2 launch pcdet_ros2 pcdet_with_tracking.launch.py

4.2 激光雷达+视觉检测/跟踪/速度检测，依托mvxnet检测模型（可训练）+AB3DMOT跟踪模型
#相机标定
matlab软件标定
标定板15cm

#编译指令
colcon build --symlink-install --packages-select fusiondet
#播放数据包
ros2 bag play /workspace/CogniScope/src/ultralytics_ros/ros2bag/kitti_2011_09_26_drive_0106_synced --clock --loop
#代码运行
ros2 run fusiondet test
ros2 run fusiondet fusiondet
ros2 run fusiondet fusiondet1

4.3 视觉目标检测与跟踪

4.3.1 yolov8视觉目标检测与跟踪
#官方镜像
docker run --gpus all --shm-size 32g -it --name ros2_yolov8  -v /home/dell/ljw/code/ros2_yolo:/workspace/ros2_yolo -v /tmp/.X11-unix:/tmp/.X11-unix -d -e DISPLAY=$DISPLAY -e GDK_SCALE -e GDK_DPI_SCALE --ipc host --network=host --pid=host --security-opt seccomp=unconfined --privileged --cap-add=SYS_PTRACE alpacazip/ultralytics_ros:noetic /bin/bash
#编译指令
colcon build --symlink-install --packages-select ultralytics_ros
#docker启动
docker start cogniscope_v1
docker exec -it cogniscope_v1 /bin/bash
cd /workspace/CogniScope/
#播放数据包
ros2 bag play /workspace/CogniScope//src/ultralytics_ros/ros2bag/kitti_2011_09_26_drive_0106_synced --clock --loop
#运行代码
ros2 launch ultralytics_ros kitti_tracker.launch.xml

4.3.2 yolox + masa 视觉目标检测与跟踪
#docker启动
docker start cogniscope_v1 
docker exec -it cogniscope_v1 /bin/bash 
cd /workspace/CogniScope 
#安装依赖包
python3 -m pip install -r src/masa_track_ws/requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple || true 
#编译指令
colcon build --symlink-install --base-paths src/masa_track/src --packages-select control_interfaces masa_track 
#启动节点
ros2 run masa_track track_node
#播放数据包
ros2 bag play /workspace/CogniScope/rosbag2/carla/masa/lidar_data -r 0.5 --topic /carla_camera

5.4d毫米波和雷达融合检测
#docker启动
docker start cogniscope_v1
docker exec -it cogniscope_v1 /bin/bash
cd /workspace/CogniScope/
#验证
python3 tools/eval_single_epoch.py \
    --cfg_file /workspace/ros2_yolo/src/see_test/tools/cfgs/kitti_models/car_pedes.yaml \
    --ckpt /workspace/ros2_yolo/src/see_test/output/car_pedes/carla_initial/eval/eval_with_train/best_eval/best_epoch_checkpoint.pth \
    --pretrained_model /workspace/ros2_yolo/src/see_test/output/car_pedes/carla_initial/eval/eval_with_train/best_eval/best_epoch_checkpoint.pth
#查看单帧效果
python /home/dell/ljw/code/ros2_yolo/src/see_test/tools/demo_picture.py \
   --ckpt /home/dell/ljw/code/ros2_yolo/src/see_test/output/car_pedes/carla_initial/eval/eval_with_train/best_eval/best_epoch_checkpoint.pth  \
   --data_path /workspace/ros2_yolo/src/see_test/data/lidar/training/velodyne/003150.bin
#训练
python3 tools/train.py \
--cfg_file /workspace/ros2_yolo/src/see_test/tools/cfgs/kitti_models/car_pedes.yaml \
--pretrained_model /workspace/ros2_yolo/src/see_test/output/car_pedes/carla_initial/eval/eval_with_train/best_eval/best_epoch_checkpoint.pth \
--batch_size 28 \
--epochs 40 \
--workers 8 

#启动数据包 /carla_lidar /carla_radar_1
ros2 bag play /workspace/CogniScope/rosbag2/carla/rosbag2_2026_01_04-10_32_03 -l
#编译指令
cd /workspace/CogniScope/
colcon build --symlink-install --packages-select see_beyond_ros2 
source install/setup.bash
ros2 launch see_beyond_ros2 see_beyond_ros2.launch.py
ros2 topic echo /fusion_detections

6.红外小目标检测
#运行指令
cd /workspace/CogniScope/src/Infrared-Small-Target-Detection-master
python demo.py

7.可见光和红外融合目标检测
#运行指令
cd /workspace/CogniScope/src/multispectral-object-detection-main
python detect_twostream.py 

8 carla模拟环境 地址：/workspace/CogniScope/src/carla_api
#编译指令
colcon build --symlink-install --base-paths src src/carla_api/src --packages-select carla_control carla_control_interfaces sim_node lidar_analysis ompl
colcon build --symlink-install --base-paths src src/carla_api/src --packages-select carla_control_interfaces sim_node
rm -rf build/carla_control_interfaces
rm -rf install/carla_control_interfaces
rm -rf install/share/carla_control_interfaces 
rm -rf install/include/carla_control_interfaces
rm -rf log/latest_build/carla_control_interfaces

colcon build --symlink-install \
  --base-paths src src/carla_api/src \
  --packages-select carla_control_interfaces \
  --allow-overriding carla_control_interfaces


# 进入场景目录并运行
cd /workspace/CogniScope
source install/setup.bash
ros2 run sim_node sim_node --ros-args --params-file /workspace/CogniScope/src/carla_api/src/sim_node/雨天人车/yutian2.0.json
#等车辆落地后启动 carla 控制器：
cd /workspace/CogniScope
source install/setup.bash
ros2 run carla_control carla_control

#常用指令
python setup.py develop
gsettings set org.gnome.settings-daemon.plugins.media-keys max-screencast-length 0

git remote set-url origin git@github.com:BigCator/CogniScope.git #把仓库 remote 改成 SSH
git branch
git push -u origin master
ssh -T git@github.com

#notice!!!
1.colcon build --packages-select see_beyond_ros2失败
在所有非 ROS 包目录里加 COLCON_IGNORE，ROS 2 的构建工具 colcon 里，有一个约定：
如果某个目录下存在 COLCON_IGNORE 文件，colcon 在扫描工作空间时就会 跳过这个目录，不会尝试把它识别为一个 ROS 包。
本项目需要忽略编译的包：
cd /workspace/ros2_yolo/src
touch AB3DMOT-master/COLCON_IGNORE
touch driver_ros1/COLCON_IGNORE
touch Infrared-Small-Target-Detection-master/COLCON_IGNORE
touch mmdetection3d/COLCON_IGNORE
touch multispectral-object-detection-main/COLCON_IGNORE
touch multispectral-object-detection-main-prune/COLCON_IGNORE
touch OpenPCDet/COLCON_IGNORE
touch see_test/COLCON_IGNORE

#大文件压缩
tar -cvf - your_folder | zstd -19 -o your_folder.tar.zst
tar --use-compress-program=zstd -xvf your_folder.tar.zst
#使用BaiduPCS-Go压缩并上传文件
tar -cvf - data | zstd -19 -o data.tar.zst
./BaiduPCS-Go upload /data/ljw/cogniscope_v1/cogniscope_v1.tar  感知系统/CogniScope/imgaes
./BaiduPCS-Go upload -retry 3 /home/dell/ljw/code/CogniScope/src.zip upload_test/
ps aux | grep BaiduPCS-Go

ls -l 文件名 #查看软链接
du -sh directory #查看整个目录大小

#查看函数来源路径
import inspect 
print(eval_utils.__file__) # 打印实际导入的文件路径 
print(inspect.signature(eval_utils.eval_one_epoch)) # 打印函数签名

