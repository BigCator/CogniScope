import os
import time
import cv2
import tqdm
import shutil

def find_files(folder, target_type='json'):
    target_files = []
    for root, dirs, files in os.walk(folder):
        for file in files:
            if file.endswith(target_type):
                file_path = os.path.join(root, file)
                target_files.append(file_path)

    return sorted(target_files)


def main():
    folder = "/media/qolo/2TB/projects/ZW/datasets/zw_1111/labelled_data"
    target_folder = "/media/qolo/2TB/projects/ZW/datasets/zw_1111/trainval"

    target_img_folder = os.path.join(target_folder, 'images')
    # target_lidar_folder = os.path.join(target_folder, 'lidar')
    target_json_label_folder = os.path.join(target_folder, 'annotations_json')
    if not os.path.exists(target_img_folder):
        os.makedirs(target_img_folder)
    # if not os.path.exists(target_lidar_folder):
    #     os.makedirs(target_lidar_folder)
    if not os.path.exists(target_json_label_folder):
        os.makedirs(target_json_label_folder)

    json_files = [file for file in find_files(folder, 'json') if 'infared_crop' in file]
    # pcd_files = find_files(folder, 'pcd')
    img_files = [file.replace('.json', '.png') for file in json_files]
    
    num_files = len(json_files)
    for i, json_label in enumerate(json_files):
        shutil.copy(json_label, os.path.join(target_json_label_folder, "{:06d}.json".format(i))) 
    for j, img in enumerate(img_files):
        shutil.copy(img, os.path.join(target_img_folder, "{:06d}.png".format(j))) 

    
if __name__ == '__main__':
    main()