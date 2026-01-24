import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.cm as cm

# 函数：读取并可视化点云
def visualize_point_cloud_with_matplotlib(file_path):
    # 读取bin文件
    points = np.fromfile(file_path, dtype=np.float32).reshape(-1, 4)
    xyz = points[:, :3]  # 前三列为XYZ
    intensity = points[:, 3]  # 第四列为强度值
    
    # 创建3D图形
    fig = plt.figure(figsize=(14, 10))
    ax = fig.add_subplot(111, projection='3d')
    
    # 强度值归一化 用于着色
    intensity_norm = (intensity - np.min(intensity)) / (np.max(intensity) - np.min(intensity))
    
    # 点云着色方案
    # 选项1：热力图colormap
    colors = cm.jet(intensity_norm)
    
    # 选项2：蓝-绿-金渐变色（清晰区分强度）
    sea_to_sun = cm.get_cmap('viridis')
    colors = sea_to_sun(intensity_norm ** 0.3)  # gamma校正增强低强度区域
    
    # 更大的点尺寸和深度投影增强3D效果
    ax.scatter(
        xyz[:, 0],   # x坐标
        xyz[:, 1],   # y坐标
        xyz[:, 2],   # z坐标
        s=1,        # 点大小
        c=colors,    # 颜色映射
        marker='o',  # 圆形点
        alpha=0.7,   # 适当透明度
        depthshade=True,  # 深度阴影增强景深
        edgecolors='none' # 避免边缘线干扰
    )
    
    # 增强坐标轴显示(带箭头)
    arrow_length = np.ptp(xyz, axis=0).max() * 0.2  # 动态箭头长度
    
    ax.quiver(0, 0, 0, arrow_length, 0, 0, color='red', linewidth=2, arrow_length_ratio=0.1)
    ax.quiver(0, 0, 0, 0, arrow_length, 0, color='blue', linewidth=2, arrow_length_ratio=0.1)
    ax.quiver(0, 0, 0, 0, 0, arrow_length, color='green', linewidth=2, arrow_length_ratio=0.1)
    
    # 坐标轴标注
    ax.text(arrow_length*1.1, 0, 0, 'X', fontsize=16, color='red')
    ax.text(0, arrow_length*1.1, 0, 'Y', fontsize=16, color='blue')
    ax.text(0, 0, arrow_length*1.1, 'Z', fontsize=16, color='green')
    
    # 添加参考平面增强空间感
    max_range = np.array([
        xyz[:, 0].max()-xyz[:, 0].min(), 
        xyz[:, 1].max()-xyz[:, 1].min(), 
        xyz[:, 2].max()-xyz[:, 2].min()
    ]).max()
    
    plane_size = max_range * 0.5
    xx, yy = np.meshgrid(
        np.linspace(-plane_size, plane_size, 20),
        np.linspace(-plane_size, plane_size, 20)
    )
    zz = np.zeros_like(xx) + xyz[:, 2].min() + max_range*0.1  # 在底部创建平面
    
    # # 绘制半透明地面
    # ax.plot_surface(xx, yy, zz, alpha=0.2, color='gray', edgecolor='k')
    
    # 设置坐标轴标签和视图角度
    ax.set_xlabel('X')
    ax.set_ylabel('Y')
    ax.set_zlabel('Z')
    ax.set_title(f'Point Cloud Visualization: {file_path.split("/")[-1]}', fontsize=14)
    
    # 添加比例尺(还原真实尺寸感)
    ax.set_box_aspect([1,1,0.3])  # z轴压缩以突显垂直细节
    
    # 添加色标条显示强度映射
    sm = plt.cm.ScalarMappable(cmap='viridis')
    sm.set_array(intensity_norm)
    cbar = fig.colorbar(sm, ax=ax, shrink=0.5, pad=0.1)
    cbar.set_label('Intensity (Normalized)', labelpad=15, rotation=270)
    
    # 添加面积统计信息
    stats_text = f"Total Points: {len(xyz):,}\n" \
                 f"X-range: {xyz[:,0].min():.1f}m - {xyz[:,0].max():.1f}m\n" \
                 f"Y-range: {xyz[:,1].min():.1f}m - {xyz[:,1].max():.1f}m\n" \
                 f"Z-range: {xyz[:,2].min():.1f}m - {xyz[:,2].max():.1f}m"
    
    ax.text2D(0.02, 0.95, stats_text, transform=ax.transAxes, 
              bbox=dict(facecolor='white', alpha=0.8))
    
    # 优化视图角度 - 俯视45° 倾斜30°
    ax.view_init(elev=45, azim=-45)
    
    # # 保存高清图片(可选)
    # plt.savefig(f"{file_path.split('.')[0]}_visualization.png", dpi=300, bbox_inches='tight')
    
    plt.show()

# 主程序 ==============================================

# 路径1：Waymo数据集
print("可视化 View of Delft 数据...")
# visualize_point_cloud_with_matplotlib(
#     "/home/dell/view_of_delft_PUBLIC/lidar/training/velodyne/01500.bin"
# )

# 路径2：CARLA-VoD数据集（根据需要取消注释）
print("\n可视化 CARLA-VoD 数据...")
visualize_point_cloud_with_matplotlib(
    "/home/dell/vod_carla/lidar/training/velodyne/001000.bin"
)

