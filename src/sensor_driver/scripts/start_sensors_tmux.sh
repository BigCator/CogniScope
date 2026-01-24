#!/bin/bash

# 创建tmux会话
tmux new-session -d -s sensors

# 重命名窗口
tmux rename-window 'Sensors'

# 分割窗口为四个面板
tmux split-window -v
tmux split-window -h
tmux select-pane -t 0
tmux split-window -h

# 设置面板标题
tmux select-pane -t 0 -T "LiDAR"
tmux select-pane -t 1 -T "Camera"
tmux select-pane -t 2 -T "IMU"
tmux select-pane -t 3 -T "PointCloud"

# 启动激光雷达（面板0）
tmux send-keys -t 0 "source ~/sensor_ws/install/setup.bash && ros2 launch rslidar_sdk start.py" C-m

# 启动相机（面板1，延迟5秒）
tmux send-keys -t 1 "sleep 5 && source ~/sensor_ws/install/setup.bash && ros2 launch realsense2_camera rs_launch.py" C-m

# 启动惯导（面板2，延迟3秒）
tmux send-keys -t 2 "sleep 3 && source ~/sensor_ws/install/setup.bash && ros2 run imu5651_driver imu5651_driver" C-m

# 启动点云转换（面板3，延迟10秒）
tmux send-keys -t 3 "sleep 10 && source ~/sensor_ws/install/setup.bash && ros2 launch pointcloud_to_laserscan sample_pointcloud_to_laserscan_launch.py" C-m

# 附加到tmux会话
tmux attach -t sensors

