import cv2
import os

# 指定文件夹路径
folder_path = "/media/qolo/2TB/projects/ZW/datasets/zw_1111/labelled_data/Daytime_02_sync/camera/infared"
resized_folder_path = folder_path.replace("/infared", "/infared_1920_1080")
if not os.path.exists(resized_folder_path):
    os.makedirs(resized_folder_path)

# 遍历文件夹中的所有文件
for filename in os.listdir(folder_path):
    # 构建图像的完整路径
    image_path = os.path.join(folder_path, filename)

    # 读取图像
    image = cv2.imread(image_path)

    # 调整图像大小为1920x1080
    resized_image = cv2.resize(image, (1920, 1080))

    # 保存调整大小后的图像
    output_path = os.path.join(resized_folder_path, filename)
    cv2.imwrite(output_path, resized_image)