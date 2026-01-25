"""
从 ROS2 的 rosbag2 中读取指定话题 
/zw040201/lidar_main_pointcloud 和 /zw040201/camera_main
并将对应帧保存为要求的目录结构
|-- calib
|   `-- camera
|-- camera
|   `-- front
|-- label   (只生成文件夹，不生成文件)
`-- lidar
    |-- 000000.bin
    |-- 000001.bin
    |-- 000002.bin
    `-- 000003.bin
"""

import os
import cv2
import numpy as np
import rosbag2_py
import rclpy
from rclpy.serialization import deserialize_message
from sensor_msgs.msg import PointCloud2, Image, CompressedImage
from sensor_msgs_py import point_cloud2
from cv_bridge import CvBridge

# rosbag2 路径
bag_path = "/home/dell/ljw/code/ros2_yolo/rosbag2/zhenshi/rosbag2_2025_12_29-14_27_28"

# 输出目录
outdir = "/home/dell/ljw/code/ros2_yolo/tools/SUSTechPOINTS/data/618_date"
lidar_dir = os.path.join(outdir, "lidar")
camera_dir = os.path.join(outdir, "camera", "front")
label_dir = os.path.join(outdir, "label")
calib_dir = os.path.join(outdir, "calib", "camera")

# 只创建目录，不生成 label 文件
for d in [lidar_dir, camera_dir, label_dir, calib_dir]:
    os.makedirs(d, exist_ok=True)

bridge = CvBridge()

# 初始化 ROS2
rclpy.init()
reader = rosbag2_py.SequentialReader()

storage_options = rosbag2_py.StorageOptions(uri=bag_path, storage_id="sqlite3")
converter_options = rosbag2_py.ConverterOptions("", "")
reader.open(storage_options, converter_options)

# 用列表缓存数据
lidar_msgs = []
camera_msgs = []

print("📂 正在读取 rosbag2 数据...")

while reader.has_next():
    topic, data, t = reader.read_next()

    if topic == "/zw040201/lidar_main_pointcloud":
        msg = deserialize_message(data, PointCloud2)
        lidar_msgs.append((t, msg))

    elif topic == "/zw040201/camera_main":
        # 尝试 Image 和 CompressedImage 两种类型
        try:
            msg = deserialize_message(data, Image)
        except Exception:
            msg = deserialize_message(data, CompressedImage)
        camera_msgs.append((t, msg))

print(f"✅ 读取完成: 点云 {len(lidar_msgs)} 帧, 相机 {len(camera_msgs)} 帧")

# 按时间戳对齐
frame_id = 0
for t_lidar, lidar_msg in lidar_msgs:
    if not camera_msgs:
        continue

    # 找到最近的 camera 帧
    closest_camera = min(camera_msgs, key=lambda x: abs(x[0] - t_lidar))
    t_cam, cam_msg = closest_camera

    # 转换点云为 KITTI bin
    points = []
    for p in point_cloud2.read_points(lidar_msg, field_names=("x", "y", "z", "intensity"), skip_nans=True):
        points.append([p[0], p[1], p[2], p[3] if len(p) > 3 else 0.0])
    points = np.array(points, dtype=np.float32)

    lidar_file = os.path.join(lidar_dir, f"{frame_id:06d}.bin")
    points.tofile(lidar_file)

    # 保存相机图像
    if isinstance(cam_msg, Image):
        cv_img = bridge.imgmsg_to_cv2(cam_msg, desired_encoding="bgr8")
    elif isinstance(cam_msg, CompressedImage):
        np_arr = np.frombuffer(cam_msg.data, np.uint8)
        cv_img = cv2.imdecode(np_arr, cv2.IMREAD_COLOR)
    else:
        continue

    img_file = os.path.join(camera_dir, f"{frame_id:06d}.png")
    cv2.imwrite(img_file, cv_img)

    frame_id += 1

print("✅ 已完成保存并对齐，输出目录为", outdir)
