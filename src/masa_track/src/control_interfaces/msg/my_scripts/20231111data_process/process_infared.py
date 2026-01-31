import os
import cv2
import tqdm

def find_files(folder, target_type='png'):
    target_files = []
    for root, dirs, files in os.walk(folder):
        for file in files:
            if 'infared' in root and file.endswith(target_type):
                file_path = os.path.join(root, file)
                target_files.append(file_path)

    return target_files


def main():
    folder = "/media/qolo/感知_ZW/zw_1111"
    target_files = find_files(folder, 'png')
    target_folders = set(os.path.dirname(file) for file in target_files)
    for target_folder in target_folders:
        target_folder = target_folder.replace("infared", "infared_crop")
        if not os.path.exists(target_folder):
            os.makedirs(target_folder)
    
    for file in tqdm.tqdm(target_files):
        img = cv2.imread(file)
        img_crop = img.copy()
        img_crop = img_crop[133: 347, 211: 428]
        save_path = file.replace("infared/", "infared_crop/")
        cv2.imwrite(save_path, img_crop)
        # breakpoint()

    
if __name__ == '__main__':
    main()