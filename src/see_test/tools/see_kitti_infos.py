import pickle

# 修改为你的实际路径，比如 /home/dell/xzx_ws/see_test/data/kitti_infos_train.pkl
info_file = "/home/dell/ljw/code/ros2_yolo/src/see_test/data/radar/kitti_infos_train.pkl"

with open(info_file, "rb") as f:
    infos = pickle.load(f)

print("总样本数:", len(infos))

# 打印第一条样本的键
print("第一条样本的字段:", infos[0].keys())

# 打印点云信息
print("point_cloud:", infos[0]['point_cloud'])

# 打印图像信息
print("image:", infos[0]['image'])

# 打印标定信息
print("calib keys:", infos[0]['calib'].keys())

# 如果有标注信息，打印部分内容
if 'annos' in infos[0]:
    annos = infos[0]['annos']
    print("annos keys:", annos.keys())
    print("类别:", annos['name'])
    print("2D bbox:", annos['bbox'])
    print("3D gt_boxes_lidar:", annos['gt_boxes_lidar'])
