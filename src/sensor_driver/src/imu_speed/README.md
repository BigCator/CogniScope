## imu_speed ROS2 驱动

基于 UDP 协议的底盘 IMU + 轮速计驱动，适配你提供的通信协议，在 ROS2 Foxy（Ubuntu 20.04）下使用。

### 功能

- 从底盘通过 UDP（默认 `192.168.17.20:8000`）请求数据；
- 解析 **电机状态帧**（0x0021），发布话题：
  - `wheel_speed` (`geometry_msgs/TwistStamped`)，线速度/角速度；
- 解析 **IMU 状态帧**（0x0027），发布话题：
  - `imu/data_raw` (`sensor_msgs/Imu`)：角速度、加速度、姿态四元数。
  - `gps/fix` (`sensor_msgs/NavSatFix`)：经纬度、高度、RTK 状态；
  - `gps/vel` (`geometry_msgs/TwistStamped`)：GPS 速度模长（沿 `base_link` x 方向）。

### 构建

在你的 ROS2 工作空间（例如 `~/ros2_ws`）中：

```bash
cd ~/ros2_ws/src
git clone <your_repo_or_copy> imu_speed
cd ..
colcon build --packages-select imu_speed
source install/setup.bash
```

### 运行

直接运行节点：

```bash
ros2 run imu_speed imu_speed_node \
  --ros-args \
  -p remote_ip:=192.168.17.20 \
  -p remote_port:=8000 \
  -p local_port:=8001 \
  -p request_id:=0xFFFF \
  -p publish_rate_hz:=100.0
```

或使用 launch 文件，并带开关参数：

```bash
ros2 launch imu_speed imu_speed.launch.py \
  enable_imu:=true \
  enable_wheel:=true \
  enable_gps_fix:=true \
  enable_gps_vel:=true
```

### 参数说明

- `remote_ip`：底盘 IP，默认 `192.168.17.20`
- `remote_port`：底盘端口，默认 `8000`
- `local_port`：本地 UDP 绑定端口，默认 `8001`
- `request_id`：请求帧 ID（`0xFFFF` 表示全部帧）
- `publish_rate_hz`：发送请求和读取数据的频率（Hz）
- `enable_imu`：是否发布 `imu/data_raw`，默认 `true`
- `enable_wheel`：是否发布 `wheel_speed`，默认 `true`
- `enable_gps_fix`：是否发布 `gps/fix`，默认 `true`
- `enable_gps_vel`：是否发布 `gps/vel`，默认 `true`

### 时间戳说明

- 所有话题的 `header.stamp` 均来自节点本机时间 `this->get_clock()->now()`，表示 **收到并解析该 UDP 帧的 ROS 时间**；
- 同一帧 IMU 数据解析出的 `imu/data_raw`、`gps/fix`、`gps/vel` 共用同一个时间戳，且坐标系均为 `base_link`（IMU 的 frame_id 为 `imu_link`）。


