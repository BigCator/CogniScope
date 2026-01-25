import json
import os
import math
import numpy as np
import random
import shutil
import csv

random.seed(0)  # 固定随机种子确保结果可复现
np.random.seed(0)

# ===== 新增雷达路径 =====
# sourceRadarPath = 'F:/carla数据备份/rain1_3_4_7_6_8/radar/'
# radarTrainingPath = 'F:/data_carla/vod_carla_1219/radar/training/velodyne/'
# radarTestingPath = 'F:/data_carla/vod_carla_1219/radar/testing/velodyne/'
# ===== 新增结束 =====

label_path = '/workspace/ros2_yolo/tools/SUSTechPOINTS/data/618_date/label'
calibFile = '/workspace/ros2_yolo/tools/SUSTechPOINTS/data/618_date/calib/camera/front.json'
sourceImagePath = '/workspace/ros2_yolo/tools/SUSTechPOINTS/data/618_date/camera/front'
sourceVelodynePath = '/workspace/ros2_yolo/tools/SUSTechPOINTS/data/618_date/lidar'

kittiLabelPath = '/workspace/ros2_yolo/src/mmdetection3d/data/618_data/training/label_2/'
kittiCalibPath = '/workspace/ros2_yolo/src/mmdetection3d/data/618_data/training/calib/'
imageSetsPath = '/workspace/ros2_yolo/src/mmdetection3d/data/618_data/ImageSets/'
trainingPath = '/workspace/ros2_yolo/src/mmdetection3d/data/618_data/training/'
testingPath = '/workspace/ros2_yolo/src/mmdetection3d/data/618_data/testing/'

skipped_frames = []  # 用于存储跳过的帧ID列表

def is_empty_json(file_path):
    """检查JSON文件是否为空（无目标）"""
    if not os.path.exists(file_path):
        print(f"⚠️ 标签文件不存在: {file_path}")
        return True
    
    try:
        with open(file_path) as fp:
            jsonContent = json.load(fp)
        return len(jsonContent) == 0
    except json.JSONDecodeError:
        print(f"❌ JSON解析错误: {file_path}")
        return True
    except Exception as e:
        print(f"❌ 读取文件时出错: {file_path}, 错误: {str(e)}")
        return True

def frame_id_to_num(filename):
    """从文件名中提取帧号数字"""
    return int(filename.split('.')[0])

def calibLabelFileGen(Path, fname, jsonContent, istrain=True):
    """生成KITTI格式的标签和标定文件"""
    # 确保目录存在
    os.makedirs(Path + "label_2/", exist_ok=True)
    os.makedirs(Path + "calib/", exist_ok=True)
    
    # 如果是训练集，处理标签文件
    if istrain:
        label_file_path = os.path.join(Path, "label_2", fname.replace('json', 'txt'))
        
        # 如果有旧文件存在，删除它
        if os.path.exists(label_file_path):
            os.remove(label_file_path)
        
        # 处理每个对象
        print(f"处理 {fname}，包含 {len(jsonContent)} 个目标")
        for i in range(len(jsonContent)):
            content = jsonContent[i]
            psr = content["psr"]
            position = psr["position"]
            scale = psr["scale"]
            rotation = psr["rotation"]
            pointXYZ = np.array([position["x"], position["y"], position["z"], 1]).T 
            camPosition = np.matmul(Tr_velo_to_cam, pointXYZ)
            
            kittiDict = {}
            kittiDict["objectType"] = content["obj_type"]
            kittiDict["truncated"] = "0.0"
            kittiDict["occluded"] = "0"
            kittiDict["alpha"] = "0.0"
            kittiDict["bbox"] = [0.00, 0.00, 50.00, 50.00]
            kittiDict["diamensions"] = [scale['z'], scale['y'], scale['x']]
            kittiDict["location"] = [camPosition[0], camPosition[1] + float(scale["z"])/2 , camPosition[2] ]
            kittiDict["rotation_y"] = -math.pi/2 - rotation["z"]
            
            with open(label_file_path, 'a+') as f:
                for item in kittiDict.values():
                    if isinstance(item, list):
                        for temp in item:
                            f.writelines(str(temp) + " ")
                    else:        
                        f.writelines(str(item)+ " ")
                f.writelines("\n")
    
    # 生成标定文件
    calib_file_path = os.path.join(Path, "calib", fname.replace('json', 'txt'))
    with open(calib_file_path, 'w') as f:
        P2 =  np.array(intrinsic).reshape(3,3)
        P2 = np.insert(P2, 3, values=np.array([0,0,0]), axis=1)
        
        f.writelines("P0: ")
        for num in P2.flatten():
            f.writelines(str(num)+ " ")
        f.writelines("\n")
        
        f.writelines("P1: ")          
        for num in P2.flatten():
            f.writelines(str(num)+ " ")
        f.writelines("\n")
        
        f.writelines("P2: ")
        for num in P2.flatten():
            f.writelines(str(num)+ " ")
        f.writelines("\n")
        
        f.writelines("P3: ")
        for num in P2.flatten():
            f.writelines(str(num)+ " ")
        f.writelines("\n")
        
        f.writelines("R0_rect: ")
        for num in np.eye(3,3).flatten():
            f.writelines(str(num)+ " ")
        f.writelines("\n")
        
        f.writelines("Tr_velo_to_cam: ")
        for temp in Tr_velo_to_cam[:3].flatten():
            f.writelines(str(temp) + " ")
        f.writelines("\n")
        
        f.writelines("Tr_imu_to_velo: ")
        for temp in Tr_velo_to_cam[:3].flatten():
            f.writelines(str(temp) + " ")

def getCalibMatrix():
    """获取相机的内外参矩阵"""
    with open(calibFile) as fp:
        calib = json.load(fp)
    return calib["extrinsic"], calib["intrinsic"]

# 主程序开始
extrinsic, intrinsic = getCalibMatrix()
Tr_velo_to_cam = np.array(extrinsic).reshape(4,4)
print("Tr_velo_to_cam Extrinsic: ", Tr_velo_to_cam)

# 获取所有标签文件并按帧号排序
files = sorted(os.listdir(label_path))
print(f"获取到 {len(files)} 个原始数据文件")

# 按文件名中的数字进行排序
files = sorted(files, key=frame_id_to_num)
print("已按帧号顺序排序文件")

# ====== 关键修改：先过滤空标签文件 ======
valid_files = []  # 存储实际有效的文件
for fname in files:
    source_label_path = os.path.join(label_path, fname)
    if not is_empty_json(source_label_path):
        valid_files.append(fname)
    else:
        frame_id = fname.replace(".json", "")
        skipped_frames.append(frame_id)
        print(f"🚫 跳过空标签帧: {frame_id}")

total_num = len(valid_files)  # 实际有效文件数

# # ====== 关键修改：按有效文件划分数据集 ======
# # 计算每个区间的大小（确保每个区间都有训练和测试样本）
# interval_size = 100  # 每100帧为一个区间
# num_intervals = total_num // interval_size + (1 if total_num % interval_size > 0 else 0)
# print(f"将数据划分为 {num_intervals} 个区间，每个区间 {interval_size} 帧")

# # 训练集和测试集比例设定
# train_ratio = 0.8  # 每个区间80%用于训练

# # 处理训练集和测试集
# train_indices = []   # 训练集文件列表
# test_indices = []    # 测试集文件列表

# # 遍历每个区间
# for interval in range(num_intervals):
#     start_idx = interval * interval_size
#     end_idx = min((interval + 1) * interval_size, total_num)
#     interval_files = valid_files[start_idx:end_idx]
    
#     if not interval_files:
#         continue
        
#     # 计算当前区间的训练集大小
#     interval_train_num = int(len(interval_files) * train_ratio)
    
#     # 确保每个区间至少有1个训练样本和1个测试样本
#     if interval_train_num == len(interval_files):
#         interval_train_num = len(interval_files) - 1
#     elif interval_train_num == 0:
#         interval_train_num = 1
    
#     # 抽取训练集和测试集
#     interval_train = interval_files[:interval_train_num]
#     interval_test = interval_files[interval_train_num:]
    
#     train_indices.extend(interval_train)
#     test_indices.extend(interval_test)

# ====== 修改：训练集和测试集使用相同数据 ======
train_indices = valid_files[:]  # 复制全部有效文件作为训练集
test_indices = valid_files[:]   # 复制全部有效文件作为测试集

# 对训练集和测试集按帧号排序
train_indices = sorted(train_indices, key=frame_id_to_num)
test_indices = sorted(test_indices, key=frame_id_to_num)

print(f"\n===== 数据集划分统计 =====")
print(f"总文件数: {total_num} (已过滤空标签)")
print(f"训练集文件数: {len(train_indices)}")
print(f"测试集文件数: {len(test_indices)}")
print(f"训练集比例: {len(train_indices)/total_num:.2f}")
print(f"测试集比例: {len(test_indices)/total_num:.2f}")

# 创建文件列表时保持顺序
def write_ordered_file_list(file_path, file_list):
    """按帧号顺序写入文件列表"""
    # 提取帧号并排序
    frame_ids = sorted([frame_id_to_num(fname.replace('.json', '')) for fname in file_list])
    # 转换为字符串格式，保持6位数字的格式
    ordered_list = [str(frame_id).zfill(6) for frame_id in frame_ids]
    
    with open(file_path, 'w') as f:
        for frame_id in ordered_list:
            f.write(frame_id + '\n')
    
    print(f"已写入 {len(ordered_list)} 个有序帧到 {file_path}")

# 确保输出目录存在
for path in [trainingPath, testingPath]:
    for subdir in ['image_2/', 'velodyne/', 'label_2/', 'calib/']:
        os.makedirs(os.path.join(path, subdir), exist_ok=True)
os.makedirs(imageSetsPath, exist_ok=True)

# 确保雷达目录存在
# os.makedirs(radarTrainingPath, exist_ok=True)
# os.makedirs(radarTestingPath, exist_ok=True)

# 处理训练集
print(f"\n===== 处理训练集 ({len(train_indices)}个文件) =====")
# 创建有序的train.txt
train_file_path = os.path.join(imageSetsPath, 'train.txt')
write_ordered_file_list(train_file_path, train_indices)

# 处理训练集文件
for i, fname in enumerate(train_indices):
    if i % 100 == 0:  # 每处理100个文件打印进度
        print(f"训练集进度: {i+1}/{len(train_indices)}")
        
    source_label_path = os.path.join(label_path, fname)
    
    # 处理非空标签（已过滤，所以都是非空的）
    with open(source_label_path) as fp:
        jsonContent = json.load(fp)
    calibLabelFileGen(trainingPath, fname, jsonContent, istrain=True)
    
    # 复制图像和点云
    img_src = os.path.join(sourceImagePath, fname.replace("json", "png"))
    img_dst = os.path.join(trainingPath, 'image_2', fname.replace("json", "png"))
    pc_src = os.path.join(sourceVelodynePath, fname.replace("json", "bin"))
    pc_dst = os.path.join(trainingPath, 'velodyne', fname.replace("json", "bin"))
    
    if os.path.exists(img_src) and os.path.exists(pc_src):
        shutil.copy(img_src, img_dst)
        shutil.copy(pc_src, pc_dst)
    else:
        print(f"文件不存在: {img_src} 或 {pc_src}")
        
    # 复制雷达数据到训练集
    # radar_src = os.path.join(sourceRadarPath, fname.replace("json", "bin"))
    # radar_dst = os.path.join(radarTrainingPath, fname.replace("json", "bin"))
    # if os.path.exists(radar_src):
    #     shutil.copy(radar_src, radar_dst)
    # else:
    #     print(f"雷达文件不存在: {radar_src}")

# 处理测试集
print(f"\n===== 处理测试集 ({len(test_indices)}个文件) =====")
# 创建有序的test.txt
test_file_path = os.path.join(imageSetsPath, 'test.txt')
write_ordered_file_list(test_file_path, test_indices)

# 处理测试集文件
for i, fname in enumerate(test_indices):
    if i % 100 == 0:  # 每处理100个文件打印进度
        print(f"测试集进度: {i+1}/{len(test_indices)}")
        
    source_label_path = os.path.join(label_path, fname)
    
    # 处理非空标签（已过滤，所以都是非空的）
    with open(source_label_path) as fp:
        jsonContent = json.load(fp)
    calibLabelFileGen(testingPath, fname, jsonContent, istrain=False)
    
    # 复制图像和点云
    img_src = os.path.join(sourceImagePath, fname.replace("json", "png"))
    img_dst = os.path.join(testingPath, 'image_2', fname.replace("json", "png"))
    pc_src = os.path.join(sourceVelodynePath, fname.replace("json", "bin"))
    pc_dst = os.path.join(testingPath, 'velodyne', fname.replace("json", "bin"))
    
    if os.path.exists(img_src) and os.path.exists(pc_src):
        shutil.copy(img_src, img_dst)
        shutil.copy(pc_src, pc_dst)
    else:
        print(f"文件不存在: {img_src} 或 {pc_src}")
        
    # 复制雷达数据到测试集
    # radar_src = os.path.join(sourceRadarPath, fname.replace("json", "bin"))
    # radar_dst = os.path.join(radarTestingPath, fname.replace("json", "bin"))
    # if os.path.exists(radar_src):
    #     shutil.copy(radar_src, radar_dst)
    # else:
    #     print(f"雷达文件不存在: {radar_src}")

# 创建其他文件集的副本
fileLists = ["trainval.txt", "val.txt"]
for fileName in fileLists:
    src_path = os.path.join(imageSetsPath, 'train.txt')
    dst_path = os.path.join(imageSetsPath, fileName)
    if os.path.exists(src_path):
        shutil.copy(src_path, dst_path)

# 统计并输出跳过信息
skipped_count = len(skipped_frames)
if skipped_count > 0:
    print(f"\n🚫 总共跳过了 {skipped_count} 帧空标签数据")
    
    # 保存跳过的帧ID到CSV
    csv_path = os.path.join(imageSetsPath, 'skipped_frames.csv')
    with open(csv_path, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(['FrameID'])  # 标题行
        for frame_id in skipped_frames:
            writer.writerow([frame_id])
    print(f"📊 跳过的帧列表已保存到: {csv_path}")
else:
    print("\n✅ 未发现空标签帧")

# 最终统计（考虑跳过的帧）
print("\n===== 最终数据集统计 =====")
print(f"原始文件数: {len(files)}")
print(f"有效文件数: {total_num} (非空标签)")
print(f"训练集文件数: {len(train_indices)}")
print(f"测试集文件数: {len(test_indices)}")
print(f"跳过文件数: {len(skipped_frames)}")
print(f"训练集比例: {len(train_indices)/total_num:.2f}")
print(f"测试集比例: {len(test_indices)/total_num:.2f}")
print("数据集划分完成!")
