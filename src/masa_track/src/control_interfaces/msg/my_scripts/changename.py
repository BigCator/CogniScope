import json
import os

# 文件夹路径，确保使用双反斜杠（\\）或单斜杠（/）作为路径分隔符
folder_path = '/home/wangzhaoyang/workspace/known-and-intersection-detection-ok_copy/dataset/kitti/images/已建模目标检测/shihushan/camera/Sequence02-12_sync/camera/label_voc'

# 扩展名，例如 .jpg 和 .txt
image_ext = '.png'
annotation_ext = '.xml'

# 新文件名的前缀
new_prefix = 'yijianmo13_shs_12'

# 重命名文件
def rename_files(path, img_ext, anno_ext):
    for count, filename in enumerate(os.listdir(path)):
        if filename.endswith(img_ext):
            new_name = new_prefix + str(count)
            old_img_file = os.path.join(path, filename)
            new_img_file = os.path.join(path, new_name + img_ext)

            old_anno_file = os.path.join(path, filename.replace(img_ext, anno_ext))
            new_anno_file = os.path.join(path, new_name + anno_ext)

            if os.path.isfile(old_anno_file):
                os.rename(old_img_file, new_img_file)
                os.rename(old_anno_file, new_anno_file)
                print(f'Renamed {old_img_file} and {old_anno_file} to {new_img_file} and {new_anno_file}')

# 主程序
if __name__ == '__main__':
    rename_files(folder_path, image_ext, annotation_ext)
