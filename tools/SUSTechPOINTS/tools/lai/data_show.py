import os
import numpy as np
import cv2
import matplotlib.pyplot as plt

# -------------------------------
# 数据路径
# -------------------------------
outdir = "/home/dell/ljw/code/ros2_yolo/tools/SUSTechPOINTS/data/618_date"
lidar_dir = os.path.join(outdir, "lidar")
camera_dir = os.path.join(outdir, "camera", "front")

frame_id = 200
lidar_file = os.path.join(lidar_dir, f"{frame_id:06d}.bin")
img_file = os.path.join(camera_dir, f"{frame_id:06d}.png")

# -------------------------------
# 读取点云和图像
# -------------------------------
points = np.fromfile(lidar_file, dtype=np.float32).reshape(-1, 4)
img = cv2.imread(img_file)
img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)

# -------------------------------
# 视角 1：俯视 BEV (x-y 平面，y 为前进方向)
# -------------------------------
x_min, x_max = -40, 40
y_min, y_max = -20, 80
res = 0.05
H = int((y_max - y_min) / res)
W = int((x_max - x_min) / res)
bev = np.zeros((H, W), dtype=np.uint8)

# mask = (points[:,0]>x_min)&(points[:,0]<x_max)&(points[:,1]>y_min)&(points[:,1]<y_max)
mask = (points[:,1]>x_min)&(points[:,1]<x_max)&(points[:,0]>y_min)&(points[:,0]<y_max)
x_pix = ((points[mask,1]-x_min)/res).astype(np.int32)
y_pix = ((y_max-points[mask,0])/res).astype(np.int32)
z = points[mask,2]
z_norm = (z-z.min())/(z.ptp()+1e-3)
bev[y_pix,x_pix] = (z_norm*255).astype(np.uint8)

# -------------------------------
# 视角 2：正视 Front View (y-z 平面，y 为前进方向)
# -------------------------------
y_min, y_max = -40, 40
z_min, z_max = -10, 40
res = 0.08
H = int((z_max-z_min)/res)
W = int((y_max-y_min)/res)
front = np.zeros((H, W), dtype=np.uint8)

mask = (points[:,1]>y_min)&(points[:,1]<y_max)&(points[:,2]>z_min)&(points[:,2]<z_max)
x_pix = ((points[mask,1]-y_min)/res).astype(np.int32)
y_pix = ((z_max-points[mask,2])/res).astype(np.int32)
dist = points[mask,0]   # 用左右 x 编码颜色
dist_norm = (dist-dist.min())/(dist.ptp()+1e-3)
front[y_pix,x_pix] = (dist_norm*255).astype(np.uint8)

# -------------------------------
# 视角 3：侧视 Side View (x-z 平面，x 为左右方向)
# -------------------------------
# -------------------------------
# 视角 1：虚拟相机视角 (相机在原点上方 5m，朝前方看)
# -------------------------------
cam_pos = np.array([0, 0, 5], dtype=float)   # 相机在原点上方 5m
look_at = np.array([0, 20, 0], dtype=float)  # 相机朝前方 20m
up = np.array([0, 0, 1], dtype=float)        # 上方向

# 构造相机坐标系
forward = look_at - cam_pos
forward /= np.linalg.norm(forward)
right = np.cross(forward, up); right /= np.linalg.norm(right)
up = np.cross(right, forward)

R = np.stack([up,right,  forward], axis=1)
t = -R @ cam_pos

# 投影到相机平面
pc_cam = (R @ points[:, :3].T + t[:, None]).T
x_img = pc_cam[:, 0]
y_img = pc_cam[:, 1]

# 设置图像范围和分辨率
x_min, x_max = -30, 30
y_min, y_max = -10, 40
res = 0.03
H = int((y_max - y_min) / res)
W = int((x_max - x_min) / res)
tilted = np.zeros((H, W), dtype=np.uint8)

mask = (x_img > x_min) & (x_img < x_max) & (y_img > y_min) & (y_img < y_max)
x_pix = ((x_img[mask] - x_min) / res).astype(np.int32)
y_pix = ((y_max - y_img[mask]) / res).astype(np.int32)

z = points[mask, 2]
z_norm = (z - z.min()) / (z.ptp() + 1e-3)
tilted[y_pix, x_pix] = (z_norm * 255).astype(np.uint8)

tilted = np.fliplr(tilted)

# -------------------------------
# 显示三种视角 + 原始图像
# -------------------------------
fig,axs=plt.subplots(1,4,figsize=(24,6))
axs[0].imshow(img); axs[0].set_title("Camera Image"); axs[0].axis("off")
# axs[1].imshow(bev,cmap="jet", vmin=z.min(), vmax=z.max()); axs[1].set_title("BEV (Top View)"); axs[1].axis("off")
# axs[2].imshow(front,cmap="jet", vmin=z.min(), vmax=z.max()); axs[2].set_title("Front View (y-z)"); axs[2].axis("off")
axs[1].imshow(tilted,cmap="jet"); axs[3].set_title("Side View (x-z)"); axs[3].axis("off")
plt.tight_layout()
plt.savefig("lidar_three_views.png")
print("✅ 已保存俯视图、正视图和侧视图到 lidar_three_views.png")
