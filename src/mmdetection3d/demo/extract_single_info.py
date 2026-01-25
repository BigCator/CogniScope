import os
import pickle

src_pkl = "./data/618_data/kitti_infos_train.pkl"
dst_dir = "./data/618_data/training/pkl"
dst_pkl = os.path.join(dst_dir, "kitti_000054_infos.pkl")

sample_id = 54  # 注意这里是整数

with open(src_pkl, "rb") as f:
    infos = pickle.load(f)

# v2 格式顶层是 dict，包含 metainfo 和 data_list
metainfo = infos.get("metainfo", {})
data_list = infos.get("data_list", [])

# 筛选出指定 sample_idx 的条目
single_info = [info for info in data_list if info.get("sample_idx") == sample_id]

if not single_info:
    print(f"没有找到 sample_idx={sample_id}")
else:
    # 确保目录存在
    os.makedirs(dst_dir, exist_ok=True)

    # 保存为 v2 格式：dict 包含 metainfo 和 data_list
    single_infos = {
        "metainfo": metainfo,
        "data_list": single_info
    }

    with open(dst_pkl, "wb") as f:
        pickle.dump(single_infos, f)

    print(f"已保存 sample_idx={sample_id} 的 infos 到 {dst_pkl}")
