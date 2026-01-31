import os
import shutil
from tqdm import tqdm


chengshi_folder = 'demo/mp4_chengshilukou/PKU-Inside'
yewai_folder = 'demo/mp4_yewailukou/load1'

chengshi_imgs = sorted(os.listdir(chengshi_folder))
yewai_imgs = sorted(os.listdir(yewai_folder))

chengshi_raw_img_folder = '/media/qolo/XiaojunHou/datasets/ZW-Load/PKU_Inside_sync/camera'
chengshi_raw_lidar_folder = '/media/qolo/XiaojunHou/datasets/ZW-Load/PKU_Inside_sync/lidar'

yewai_raw_img_folder = '/media/qolo/XiaojunHou/datasets/ZW-Load/load-line-1-low-speed_sync/camera'
yewai_raw_lidar_folder = '/media/qolo/XiaojunHou/datasets/ZW-Load/load-line-1-low-speed_sync/lidar'

# 复制城市数据
chengshi_target_img_folder = '/home/qolo/Project/ZW/known-and-intersection-detection/demo/mp4_chengshilukou/PKU-Inside_raw_data/camera'
chengshi_target_lidar_folder = '/home/qolo/Project/ZW/known-and-intersection-detection/demo/mp4_chengshilukou/PKU-Inside_raw_data/lidar'
for img in tqdm(chengshi_imgs):
    name = img.split('.')[0]
    raw_img = os.path.join(chengshi_raw_img_folder, name + '.png')
    target_img = os.path.join(chengshi_target_img_folder, name + '.png')

    raw_lidar = os.path.join(chengshi_raw_lidar_folder, name + '.pcd')
    target_lidar = os.path.join(chengshi_target_lidar_folder, name + '.pcd')

    shutil.copy(raw_img, target_img)
    shutil.copy(raw_lidar, target_lidar)

# 复制野外数据
yewai_target_img_folder = '/home/qolo/Project/ZW/known-and-intersection-detection/demo/mp4_yewailukou/load1_raw_data/camera'
yewai_target_lidar_folder = '/home/qolo/Project/ZW/known-and-intersection-detection/demo/mp4_yewailukou/load1_raw_data/lidar'
for img in tqdm(yewai_imgs):
    name = img.split('.')[0]
    raw_img = os.path.join(yewai_raw_img_folder, name + '.png')
    target_img = os.path.join(yewai_target_img_folder, name + '.png')

    raw_lidar = os.path.join(yewai_raw_lidar_folder, name + '.pcd')
    target_lidar = os.path.join(yewai_target_lidar_folder, name + '.pcd')

    shutil.copy(raw_img, target_img)
    shutil.copy(raw_lidar, target_lidar)