import os
import shutil
from tqdm import tqdm

SPLIT_PATH = "F:/Project_code/yolov7-main/VOCdevkit/VOC2007/ImageSets/Main"
IMGS_PATH = "F:/Project_code/yolov7-main/VOCdevkit/VOC2007/JPEGImages"
TXTS_PATH = "F:/Project_code/yolov7-main/VOCdevkit/VOC2007/labels_copy"

TO_IMGS_PATH = 'F:/Project_code/yolov7-main/VOCdevkit/VOC2007/images'
TO_TXTS_PATH = 'F:/Project_code/yolov7-main/VOCdevkit/VOC2007/labels'

data_split = ['trainval.txt', 'test.txt']
to_split = ['train', 'val']

for index, split in enumerate(data_split):
    split_path = os.path.join(SPLIT_PATH, split)

    to_imgs_path = os.path.join(TO_IMGS_PATH, to_split[index])
    if not os.path.exists(to_imgs_path):
        os.makedirs(to_imgs_path)

    to_txts_path = os.path.join(TO_TXTS_PATH, to_split[index])
    if not os.path.exists(to_txts_path):
        os.makedirs(to_txts_path)

    f = open(split_path, 'r')
    count = 1

    for line in tqdm(f.readlines(), desc="{} is copying".format(to_split[index])):
        # 复制图片
        src_img_path = os.path.join(IMGS_PATH, line.strip() + '.jpg')
        dst_img_path = os.path.join(to_imgs_path, line.strip() + '.jpg')
        if os.path.exists(src_img_path):
            shutil.copyfile(src_img_path, dst_img_path)
        else:
            print("error file: {}".format(src_img_path))

        # 复制txt标注文件
        src_txt_path = os.path.join(TXTS_PATH, line.strip() + '.txt')
        dst_txt_path = os.path.join(to_txts_path, line.strip() + '.txt')
        if os.path.exists(src_txt_path):
            shutil.copyfile(src_txt_path, dst_txt_path)
        else:
            print("error file: {}".format(src_txt_path))
