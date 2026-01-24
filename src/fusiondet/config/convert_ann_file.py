import mmengine
import pickle

# 原始 list 格式的 ann_file
src = '/workspace/ros2_yolo/src/fusiondet/config/kitti_infos_val.pkl'
# 新的 dict 格式文件路径
dst = '/workspace/ros2_yolo/src/fusiondet/config/kitti_infos_val_dict.pkl'

# 加载原始 pkl
ann = mmengine.load(src)

# 如果是 list，就包装成 dict
if isinstance(ann, list):
    ann = {'data_list': ann}
    with open(dst, 'wb') as f:
        pickle.dump(ann, f)
    print(f"✅ 已保存新的 dict 格式 ann_file: {dst}")
else:
    print("⚠️ ann_file 已经是 dict 格式，无需转换")
