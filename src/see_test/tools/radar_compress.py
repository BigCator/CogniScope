import glob
from pathlib import Path
import os
import mayavi.mlab as mlab
import numpy as np

from scipy.spatial import cKDTree
from visual_utils import visualize_utils as V

from scipy.stats import skew, kurtosis
from tqdm import tqdm

# 配置参数 ------------------------------------------------------------
DATA_ROOT = "/root/data/view_of_delft_PUBLIC/radar/training/velodyne"        # 包含.bin文件的目录
TRAIN_LIST = "/root/data/view_of_delft_PUBLIC/radar/ImageSets/train.txt"     # 训练集文件列表
OUTPUT_FILE = "/root/data/view_of_delft_PUBLIC/theta_results.csv"  # 输出结果文件
POINT_DTYPE = np.dtype([
    ('x', 'f4'), ('y', 'f4'), ('z', 'f4'), ('rcs', 'f4'), ('v', 'f4'), ('v_compensate', 'f4'), ('time', 'f4')
])  # 定义点云数据结构（7个float32）
BYTES_PER_POINT = 28

def load_train_files(list_path, bin_dir):
    """从train.txt加载需要处理的文件列表"""
    with open(list_path, 'r') as f:
        # 读取并清洗文件名（处理可能的空格/换行符）
        file_ids = [line.strip().replace(' ', '') for line in f.readlines()]
    
    # 构建完整的.bin文件路径
    bin_files = []
    missing_files = []
    for fid in file_ids:
        bin_path = os.path.join(bin_dir, f"{fid}.bin")
        if os.path.exists(bin_path):
            bin_files.append(bin_path)
        else:
            missing_files.append(bin_path)
    
    # 报告缺失文件
    if missing_files:
        print(f"警告：缺失 {len(missing_files)} 个文件，例如：{missing_files[:3]}...")
    
    return bin_files

def process_single_frame(bin_path):
    """处理单个雷达帧文件"""
    try:
        # 读取二进制数据
        raw = np.fromfile(bin_path, dtype=POINT_DTYPE)
        if len(raw) == 0:
            return None
            
        # 转换为numpy数组（Nx4）
        points = np.column_stack([raw['x'], raw['y'], raw['z'], raw['rcs']])
        
        # 计算俯仰角
        x, y, z = points[:,0], points[:,1], points[:,2]
        h_dist = np.sqrt(x**2 + y**2)
        elevations = np.arctan2(z, h_dist)
        
        # 有效性检查
        if len(elevations) < 3:
            return {
                'file': os.path.basename(bin_path),
                'theta': np.nan,
                'max_elev': np.nan,
                'valid_points': len(elevations),
                'skewness': np.nan,
                'kurtosis': np.nan
            }
        
        # 统计计算
        max_elev = np.abs(max(elevations))
        s = skew(elevations)
        k = kurtosis(elevations, fisher=False)  # Pearson峰度
        
        # 计算θ
        if abs(s) < 1 and abs(k) < 1:
            theta = np.mean(elevations)
        else:
            theta = np.median(elevations)
        
        return {
            'file': os.path.basename(bin_path),
            'theta': theta,
            'max_elev': max_elev,
            'valid_points': len(elevations),
            'skewness': s,
            'kurtosis': k
        }
        
    except Exception as e:
        print(f"处理文件 {bin_path} 时出错: {str(e)}")
        return None

def main():
    # 获取所有.bin文件（按文件名排序）
    # 加载训练集文件列表
    bin_paths = load_train_files(TRAIN_LIST, DATA_ROOT)
    print(f"成功加载 {len(bin_paths)} 个待处理文件")
    
    theta_values = []
    max_elev_values = []
    # 批量处理
    results = []
    for path in tqdm(bin_paths, desc="Processing radar frames"):
        res = process_single_frame(path)
        if res is not None:
            results.append(res)

            theta_values.append(res['theta'])
            max_elev_values.append(res['max_elev'])

    # 保存结果
    import pandas as pd
    df = pd.DataFrame(results)
    df.to_csv(OUTPUT_FILE, index=False)

    # 统计报告
    valid_df = df[df['valid_points'] >= 3]
    normal_frames = valid_df[(valid_df['skewness'].abs() < 1) & 
                            (valid_df['kurtosis'] - 3).abs() < 1]
    
    print(f"\n处理完成！有效处理帧数: {len(valid_df)}")
    print(f"符合正态分布的帧占比: {len(normal_frames)/len(valid_df):.2%}")
    print(f"θ均值分布: {valid_df['theta'].mean():.4f} ± {valid_df['theta'].std():.4f} rad")

    max_elev_avg = np.mean(max_elev_values) if max_elev_values else 0
    print(f"Max Elevation平均值: {max_elev_avg:.4f} rad")
    # V.draw_points(
    #     points = points
    # )
    # mlab.show(stop=True)

    
if __name__ == "__main__":
    main()

