import numpy as np
import matplotlib.pyplot as plt
from pathlib import Path
from PIL import Image
from pcdet.utils import calibration_kitti
from visual_utils import visualize_utils as V

import glob
from pathlib import Path
import os
import mayavi.mlab as mlab
import numpy as np
from scipy.stats import variation
from scipy.spatial import cKDTree
from sklearn.linear_model import RANSACRegressor
from sklearn.neighbors import NearestNeighbors
import numpy as np
from scipy.spatial import cKDTree
from scipy.stats import entropy

class PointCloudAugmentor:
    def __init__(self, interp_ratio=0.3, noise_std=0.05, rcs_decay=0.8):
        
        self.interp_ratio = interp_ratio
        self.noise_std = noise_std
        self.rcs_decay = rcs_decay
        self.stats = {}  # 存储统计信息

    def _record_stats(self, stage, count):
        """记录各阶段点云数量"""
        self.stats[stage] = count

    def _neighbor_interpolation(self, points, k=5):
        kdtree = cKDTree(points[:, :3])
        _, indices = kdtree.query(points[:, :3], k=k+1)
        new_points = []
        normals = self._compute_normals(points)  # 确保已实现法向量计算
        curvatures = self._curvature_adaptive_noise(points)

        for i in range(len(points)):
            base_point = points[i].copy()
            base_normal = normals[i]

            curve_factor = 0.5 + 2 * curvatures[i]  # 曲率越大，噪声越强
            current_noise = self.noise_std * curve_factor

            neighbors = points[indices[i][1:1+k], :]
            neighbor_normals = normals[indices[i][1:1+k]]
            
            for n, n_normal in zip(neighbors, neighbor_normals):
                if np.random.rand() < self.interp_ratio:
                    # --- 新增alpha定义 ---
                    alpha = np.random.uniform(0.3, 0.7)  # 控制插值位置
                    
                    # 投影到共同切平面
                    avg_normal = (base_normal + n_normal) / 2
                    avg_normal /= np.linalg.norm(avg_normal) + 1e-6  # 归一化
                    tangent_plane = np.eye(3) - np.outer(avg_normal, avg_normal)
                    
                    # 沿投影方向插值
                    dir_vec = n[:3] - base_point[:3]
                    proj_dir = tangent_plane.dot(dir_vec)
                    interp_pos = base_point[:3] + alpha * proj_dir
                    
                    # 添加约束噪声
                    # noise_tangent = tangent_plane.dot(np.random.normal(0, self.noise_std, 3))
                    noise_tangent = tangent_plane.dot(np.random.normal(0, current_noise, 3))
                    noise_normal = avg_normal * np.random.normal(0, self.noise_std*0.1)
                    
                    new_p = base_point.copy()
                    new_p[:3] = interp_pos + noise_tangent + noise_normal
                    new_p[3] = (base_point[3] + n[3])/2 * self.rcs_decay
                    new_p[4:] = 0  # 未使用维度清零
                    
                    new_points.append(new_p)
                    
        return np.array(new_points) if new_points else np.empty((0,7))

    def _curvature_adaptive_noise(self, points, radius=0.5):
        """计算局部曲率指导噪声幅度"""
        kdtree = cKDTree(points[:, :3])
        curvatures = []
        
        for i in range(len(points)):
            neighbors = points[kdtree.query_ball_point(points[i, :3], radius)][:, :3]
            if len(neighbors) < 5:
                curvatures.append(0)
                continue
                
            cov = np.cov(neighbors.T)
            eigvals = np.linalg.eigvalsh(cov)
            curvatures.append(eigvals[0] / (eigvals[1] + eigvals[2]))  # 曲率指标
            
        return np.array(curvatures)

    def _compute_normals(self, points, k=10):
        """改进的法向量计算（加权协方差）"""
        kdtree = cKDTree(points[:, :3])
        normals = []
        
        for i in range(len(points)):
            neighbors = points[kdtree.query(points[i, :3], k=k)[1]][:, :3]
            
            # 距离加权协方差
            distances = np.linalg.norm(neighbors - points[i, :3], axis=1)
            weights = np.exp(-distances / (2 * np.median(distances)**2))
            cov = np.cov(neighbors.T, aweights=weights)
            
            # PCA取最小特征向量
            _, eigvecs = np.linalg.eigh(cov)
            normals.append(eigvecs[:, 0])  # 最小特征值对应法向量
            
        return np.array(normals)

    def _surface_aware_generation(self, points, radius=1.0):
        """保留7维的曲面生成"""
        new_points = []
        kdtree = cKDTree(points[:, :3])
        
        for i in range(len(points)):
            neighbor_indices = kdtree.query_ball_point(points[i, :3], radius)
            if len(neighbor_indices) < 3:
                continue
                
            # PCA计算法向量
            cov = np.cov(points[neighbor_indices, :3].T)
            eigvals, eigvecs = np.linalg.eigh(cov)
            tangent_vec = eigvecs[:, :2]
            
            # 生成新点（保留所有7维）
            new_p = points[i].copy()
            offsets = np.random.randn(2)*0.1
            new_p[:3] += tangent_vec.dot(offsets)  # 沿切平面偏移
            new_p[3] *= self.rcs_decay  # 反射率衰减
            new_p[4:] = 0  # 未使用维度清零
            
            new_points.append(new_p)
        return np.array(new_points) if new_points else np.empty((0,7))

    def augment(self, filtered_points):
        """执行增强并记录统计信息"""
        self.stats.clear()
        # 原始点云统计
        original_count = len(filtered_points)
        self._record_stats('original', original_count)

        """确保所有维度一致性的增强方法"""
        # Step 1: 邻域插值生成
        interp_points = self._neighbor_interpolation(filtered_points)
        self._record_stats('after_interpolation', original_count + len(interp_points))

        # Step 2: 曲面感知生成
        surface_points = self._surface_aware_generation(filtered_points)
        self._record_stats('after_surface', original_count + len(interp_points) + len(surface_points))

        # Step 3: 合并所有点云（此时均为7维）
        all_points = np.vstack([
            filtered_points,
            interp_points,
            surface_points
        ])
        merged_count = len(all_points)
        self._record_stats('after_merge', merged_count)

        # Step 4: 去除紧密重复点（优先保留原始点）
        if len(all_points) > 0:
            kdtree = cKDTree(all_points[:, :3])
            pairs = kdtree.query_pairs(0.1)
            mask = np.ones(len(all_points), dtype=bool)
            for i,j in pairs:
                mask[j if i < len(filtered_points) else i] = False
            all_points = all_points[mask]
        
        final_count = len(all_points)
        self._record_stats('final', final_count)

        # 打印统计报告
        self._print_stats_report()

        return all_points
    
    def _print_stats_report(self):
        """格式化输出统计信息"""
        report = [
            "===== 点云增强统计报告 =====",
            f"原始点云数量: {self.stats['original']}",
            f"插值生成点数: {self.stats['after_interpolation'] - self.stats['original']}",
            f"曲面生成点数: {self.stats['after_surface'] - self.stats['after_interpolation']}",
            f"合并后总数: {self.stats['after_merge']}",
            f"去重后最终数量: {self.stats['final']}",
            f"净增加量: {self.stats['final'] - self.stats['original']} (+{(self.stats['final']/self.stats['original']-1)*100:.1f}%)",
            "============================"
        ]
        print("\n".join(report))
        
def load_velodyne_bin(bin_path):
    """
    读取 KITTI 格式的 Velodyne 二进制文件，每个点为 [x, y, z, reflectance]
    """
    points = np.fromfile(bin_path, dtype=np.float32)
    # points = points.reshape(-1, 4)
    points = points.reshape(-1, 7)

    return points

def filter_by_rcs(point_cloud):
    """基于RCS进行初级滤波"""
    rcs = point_cloud[:, 3]
    rcs_mean = np.mean(rcs)
    rcs_threshold = 2* rcs_mean  # 设置RCS阈值
    return point_cloud[rcs > rcs_threshold]

# 位置关系滤波
def filter_by_position(point_cloud, n=1.5):
    """基于位置关系去除孤立点"""
    kdtree = cKDTree(point_cloud[:, :3])
    distances, _ = kdtree.query(point_cloud[:, :3], k=5)
    mean_distances = np.mean(distances, axis=1)
    dist_mean = np.mean(mean_distances)
    dist_std = np.std(mean_distances)
    dist_threshold = dist_mean + n * dist_std  # 设置距离阈值

    # print(mean_distances)

    return point_cloud[mean_distances < dist_threshold]

# 密度滤波
def filter_by_density(point_cloud, search_radius= 5, min_neighbors=6):
    """基于点云密度去除稀疏点"""
    kdtree = cKDTree(point_cloud[:, :3])
    densities = kdtree.query_ball_point(point_cloud[:, :3], r=search_radius)
    density_mask = np.array([len(d) > min_neighbors for d in densities])
    return point_cloud[density_mask]

def preprocess_radar(point_cloud):
    """对雷达点云执行三级滤波"""
    point_cloud = filter_by_rcs(point_cloud)  # RCS滤波
    # point_cloud = filter_by_position(point_cloud)  # 位置关系滤波
    # point_cloud = filter_by_density(point_cloud)  # 密度滤波
    return point_cloud

def calculate_density_std(points, grid_size=1.0):
    """
    :param points: (N, 3) 点云坐标 [x, y, z]
    :param grid_size: 网格尺寸 (单位与坐标一致)
    :return: 密度标准差, 密度变异系数
    """
    # 投影到XY平面并划分网格
    xy = points[:, :2]
    grid_coords = np.floor(xy / grid_size).astype(int)
    
    # 统计每个网格的点数
    unique_grids, counts = np.unique(grid_coords, axis=0, return_counts=True)
    
    # 计算统计量
    density_std = np.std(counts)  # 标准差
    density_cv = variation(counts)  # 变异系数（标准差/均值）
    return density_std, density_cv

def calculate_elevation_rmse(points_ground, max_error=0.1):
    """
    :param points_ground: (N,3) 地面点云（需提前分割地面点）
    :param max_error: RANSAC平面拟合最大残差
    :return: 高程残差RMSE
    """
    # RANSAC平面拟合 (Ax + By + C = z)
    X = points_ground[:, :2]
    y = points_ground[:, 2]
    model = RANSACRegressor(residual_threshold=max_error).fit(X, y)
    
    # 计算残差
    inlier_mask = model.inlier_mask_
    residuals = y[inlier_mask] - model.predict(X[inlier_mask])
    return np.sqrt(np.mean(residuals**2))

def calculate_outlier_ratio(points, k=5, z_threshold=3.0):
    """
    :param points: (N,3) 点云坐标
    :param k: 最近邻数量
    :param z_threshold: Z-score阈值
    :return: 异常点比率
    """
    # 计算每个点到k近邻的平均距离
    nbrs = NearestNeighbors(n_neighbors=k+1).fit(points)
    distances, _ = nbrs.kneighbors(points)
    avg_dist = distances[:, 1:].mean(axis=1)  # 排除自身
    
    # Z-score检测异常
    z_scores = (avg_dist - np.mean(avg_dist)) / np.std(avg_dist)
    outlier_ratio = np.sum(np.abs(z_scores) > z_threshold) / len(points)
    return outlier_ratio

def calculate_intensity_entropy(intensity, bins=20):
    """
    :param intensity: (N,) 点云强度值
    :param bins: 直方图分箱数
    :return: 强度信息熵（单位：nat）
    """
    hist, _ = np.histogram(intensity, bins=bins, density=True)
    return entropy(hist)

CLASS_COLORS = {
    'Pedestrian': 'dodgerblue',
    'Cyclist': 'gold', 
    'Car': 'lime'
}

def transform_anno(loc, frame_id):
    x,y, z = loc[0], loc[1], loc[2]
    calib_path = "/root/data/view_of_delft_PUBLIC/radar/training/calib/{0:05d}.txt".format(int(frame_id))
    calib = calibration_kitti.Calibration(calib_path)
    loc = np.array([[x,y,z]])
    loc_lidar = calib.rect_to_lidar(loc)
    x,y,z = loc_lidar[0]
    return x,y,z

def project_lidar_to_image(pts_lidar, calib, img_size):
    """包含真值框投影逻辑"""
    pts_hom = np.hstack([pts_lidar, np.ones((pts_lidar.shape[0], 1))]).T
    pts_cam_raw = calib.V2C @ pts_hom
    pts_cam_rect = calib.R0 @ pts_cam_raw
    pts_cam_hom = np.vstack([pts_cam_rect, np.ones((1, pts_cam_rect.shape[1]))])
    pts_2d_hom = calib.P2 @ pts_cam_hom

    xs = pts_2d_hom[0, :] / pts_2d_hom[2, :]
    ys = pts_2d_hom[1, :] / pts_2d_hom[2, :]
    valid = (xs >= 0) & (xs < img_size[1]) & (ys >= 0) & (ys < img_size[0])
    return np.c_[xs, ys], valid

def draw_3dbox(ax, corners_2d, color='red', linewidth=2):
    """绘制3D边界框的投影"""
    if corners_2d.shape[0] < 8:
        return
    
    # 框线连接顺序
    lines = [
        [0,1], [1,2], [2,3], [3,0],  # 底面
        [4,5], [5,6], [6,7], [7,4],  # 顶面
        [0,4], [1,5], [2,6], [3,7]   # 侧边
    ]
    
    for line in lines:
        try:
            x = [corners_2d[line[0],0], corners_2d[line[1],0]]
            y = [corners_2d[line[0],1], corners_2d[line[1],1]]
            ax.plot(x, y, color=color, linewidth=linewidth)
        except IndexError:
            continue

def load_annotations(frame_id, calib):
    """加载并转换真值标注"""
    label_path = Path(f"/data/view_of_delft_PUBLIC/radar/training/label_2/{frame_id}.txt")
    gt_boxes = []
    gt_names = []
    
    if not label_path.exists():
        return np.empty((0,7)), []
    
    with open(label_path, 'r') as f:
        for line in f:
            parts = line.strip().split()
            if len(parts) < 15:
                continue
                
            obj_type = parts[0].capitalize()
            if obj_type not in CLASS_COLORS:
                continue
                
            # 解析原始标注参数
            h, w, l = map(float, parts[8:11])
            x, y, z = map(float, parts[11:14])
            ry = float(parts[14])
            
            # 坐标转换到LiDAR坐标系
            rect_to_lidar = calib.rect_to_lidar(np.array([[x, y, z]]))
            x_lidar, y_lidar, z_lidar = rect_to_lidar[0]
            
            # 调整朝向角
            heading = -ry - np.pi/2
            
            gt_boxes.append([x_lidar, y_lidar, z_lidar, l, w, h, heading])
            gt_names.append(obj_type)
    
    return np.array(gt_boxes), gt_names

def process_single_file(bin_path):
    print(f"\n{'='*30} 开始处理文件 {'='*30}")
    print(f"输入文件: {bin_path}")
    
    # ========== 校验文件存在性 ==========
    if not bin_path.exists():
        print(f"[错误] 点云文件不存在: {bin_path}")
        return
    
    frame_id = bin_path.stem
    data_root = bin_path.parent.parent  # 假设目录结构为 .../velodyne/xxx.bin
    
    # ========== 定义相关文件路径 ==========
    img_path = data_root / "image_2" / f"{frame_id}.jpg"
    calib_path = data_root / "calib" / f"{frame_id}.txt"
    label_path = data_root / "label_2" / f"{frame_id}.txt"
    
    print(f"图像路径: {img_path}")
    print(f"校准路径: {calib_path}")
    print(f"标签路径: {label_path}")

    # ========== 加载必要数据 ==========
    try:
        # 加载点云（7维：x,y,z,RCS）
        points = np.fromfile(bin_path, dtype=np.float32).reshape(-1, 7)
        original_count = len(points)
        print(f"加载点云成功，点数: {len(points):,}")

        # 雷达处理
        augmentor = PointCloudAugmentor(
            interp_ratio=0.4,   # 40%的邻点对生成插值点
            noise_std=0.03,     # 3cm位置扰动
            rcs_decay=0.7       # 新增点RCS为原值70%
        )
        x = points[:, 0]
        z = points[:, 2]
        x = np.sqrt(x*x + z*z)*np.cos(60/96*np.arctan2(z, x))
        z = np.sqrt(x*x + z*z)*np.sin(60/96*np.arctan2(z, x))
        points[:, 0] = x
        points[:, 2] = z

        filter_points = preprocess_radar(points)  # 对雷达点云进行三级滤波

        
        filter_points = augmentor.augment(filter_points)
        filter_count = len(filter_points)
        print(f"滤波前的点数: {original_count}, 滤波后的点数: {filter_count}")
        # 加载图像
        img = np.array(Image.open(img_path))
        h, w = img.shape[:2]
        print(f"图像尺寸: {w}x{h}")
        
        # 加载校准
        calib = calibration_kitti.Calibration(calib_path)
    except FileNotFoundError as e:
        print(f"[错误] 文件缺失: {str(e)}")
        return
    except Exception as e:
        print(f"[错误] 数据加载失败: {str(e)}")
        return

    # ========== 点云投影 ==========
    print("\n正在投影滤波点云...")
    points_2d, valid = project_lidar_to_image(points[:, :3], calib, (h, w))
    valid_pts = points_2d[valid]
    print(f"有效投影点: {len(valid_pts):,}/{len(points):,}")

    print("\n正在投影滤波点云...")
    points_2d1, valid1 = project_lidar_to_image(filter_points[:, :3], calib, (h, w))
    valid_pts1 = points_2d1[valid1]
    print(f"有效投影点: {len(valid_pts1):,}/{len(filter_points):,}")
    gt_dict = {

        'gt_boxes': np.empty((0, 7), dtype=np.float32),  # 初始化空数组
        'gt_names': np.empty((0,), dtype=str),            # 初始化空数组
    }

    # ========== 绘制真值框 ==========
    if label_path.exists():
        gt_boxes = []
        gt_names = []
        try:
            with open(label_path, 'r') as f:
                for line in f:
                    parts = line.strip().split()
                    if len(parts) < 15:
                        continue  # 跳过无效行
                        
                    obj_type = parts[0]
                    valid_classes = {'car', 'pedestrian', 'cyclist', 'bicycle'}  # 统一小写匹配
                    if obj_type.lower() not in valid_classes:
                        continue

                    # 可选：统一输出类别名称
                    obj_type = obj_type.capitalize()  # 首字母大写
                    if obj_type == 'Bicycle':
                        obj_type = 'Cyclist'  # 根据数据集规范统一命名
                    obj_type = parts[0].strip().lower()  # 统一转为小写

                    label_mapping = {
                        'car': 'Car',
                        'pedestrian': 'Pedestrian',
                        'cyclist': 'Cyclist',
                        'bicycle': 'Cyclist',      # 合并bicycle到cyclist
                        'bike': 'Cyclist'          # 处理其他别名
                    }

                    obj_type = label_mapping.get(obj_type, 'unknown')
                    if obj_type == 'unknown':
                        continue
                    # 解析参数（View of Delft → KITTI）
                    h = float(parts[8])
                    w = float(parts[9])
                    l = float(parts[10])
                    x = float(parts[11])
                    y = float(parts[12]) - h/2  # 调整y坐标到物体中心
                    z = float(parts[13])
                    ry = float(parts[14])
                    heading = -ry - np.pi/2     # 角度转换
                    
                    x_lidar, y_lidar, z_lidar = transform_anno([x, y, z], frame_id)
                    gt_boxes.append([x_lidar, y_lidar, z_lidar, l, w, h, heading])
                    gt_names.append(obj_type)

            # 转换为numpy数组
            if len(gt_boxes) > 0:
                gt_dict['gt_boxes'] = np.array(gt_boxes, dtype=np.float32)
                gt_dict['gt_names'] = np.array(gt_names)
                print(f"[Debug] Loaded {len(gt_boxes)} GT boxes")
            else:
                print("[Debug] No valid GT boxes found")
                
        except Exception as e:
            print(f"[ERROR] Failed to load labels: {str(e)}")
 
    if 'gt_boxes' in gt_dict and gt_dict['gt_boxes'].shape[1] > 0:  # batch维度为1时
            gt_boxes_vis = gt_dict['gt_boxes']  # (N,7)
    else:
        gt_boxes_vis = None

    # ===== 绘制真值框 =====
    # 加载图像
    img = np.array(Image.open(img_path))
    h, w = img.shape[:2]

    fig, ax = plt.subplots(figsize=(16, 9))

    points_2d, valid = project_lidar_to_image(points[:, :3], calib, img.shape[:2])
    ax.scatter(points_2d[valid, 0], points_2d[valid, 1], 
            c='green', s=20, alpha=0.8, cmap='jet', 
            edgecolors='none', zorder=1)
    
    # points_2d1, valid1 = project_lidar_to_image(filter_points[:, :3], calib, img.shape[:2])
    # ax.scatter(points_2d1[valid1, 0], points_2d1[valid1, 1], 
    #         c='black', s=20, alpha=0.8, cmap='jet', 
    #         edgecolors='none', zorder=1)

    if gt_boxes_vis is not None:
        corners_3d = V.boxes_to_corners_3d(gt_boxes_vis)
        for corners in corners_3d:
            pts_2d, valid = project_lidar_to_image(corners, calib, (h, w))
            if valid.sum() >= 8:  # 确保8个角点都有效
                draw_3dbox(ax, pts_2d, color='red')

    ax.imshow(img)
    ax.set_axis_off()

    # ========== 保存结果 ==========
    output_dir = Path("visualization_results")
    output_dir.mkdir(exist_ok=True)
    output_path = output_dir / f"{frame_id}_vis.jpg"
    
    plt.axis('off')
    plt.savefig(output_path, bbox_inches='tight', dpi=300, quality=90)
    print(f"\n{'='*30} 处理完成 {'='*30}")
    print(f"结果已保存至: {output_path.resolve()}")
    plt.close()

if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument('bin_file', type=str, help='输入.bin文件路径')
    args = parser.parse_args()
    
    process_single_file(Path(args.bin_file))