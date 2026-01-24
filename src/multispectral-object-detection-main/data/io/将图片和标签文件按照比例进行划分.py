import os
import shutil
import random

# 训练集、验证集和测试集的比例分配
# test_percent = 0.1
valid_percent = 0.2
# train_percent = 0.8

# 标注文件的路径
VIS_train_image_path = '/media/disk4T/ljw/data/M3FD_Detection_TwoStream/Vis/train/images/'
VIS_train_label_path = '/media/disk4T/ljw/data/M3FD_Detection_TwoStream/Vis/train/labels/'
VIS_val_image_path = '/media/disk4T/ljw/data/M3FD_Detection_TwoStream/Vis/val/images/'
VIS_val_label_path = '/media/disk4T/ljw/data/M3FD_Detection_TwoStream/Vis/val/labels/'

IR_train_image_path = '/media/disk4T/ljw/data/M3FD_Detection_TwoStream/IR/train/images/'
IR_train_label_path = '/media/disk4T/ljw/data/M3FD_Detection_TwoStream/IR/train/labels/'
IR_val_image_path = '/media/disk4T/ljw/data/M3FD_Detection_TwoStream/IR/val/images/'
IR_val_label_path = '/media/disk4T/ljw/data/M3FD_Detection_TwoStream/IR/val/labels/'

# TXT_path = '/media/disk4T/ljw/data/M3FD_Detection_TwoStream/TXT/'

if not os.path.exists(VIS_train_label_path):
    os.makedirs(VIS_val_image_path)
if not os.path.exists(IR_train_label_path):
    os.makedirs(IR_train_label_path)

if not os.path.exists(VIS_val_image_path):
    os.makedirs(VIS_val_image_path)
if not os.path.exists(VIS_val_label_path):
    os.makedirs(VIS_val_label_path)
if not os.path.exists(IR_val_image_path):
    os.makedirs(IR_val_image_path)
if not os.path.exists(IR_val_label_path):
    os.makedirs(IR_val_label_path)

# images_files_list = os.listdir(VIS_train_image_path)
labels_files_list = os.listdir(VIS_train_label_path)
# print('images files: {}'.format(images_files_list))
# print('labels files: {}'.format(labels_files_list))
total_num = len(labels_files_list)
# test_num = int(total_num * test_percent)
valid_num = int(total_num * valid_percent)
print('total_num: {}'.format(total_num))
print('valid_num: {}'.format(valid_num))
# train_num = int(total_num * train_percent)

# 对应文件的索引
# test_image_index = random.sample(range(total_num), test_num)
valid_image_index = random.sample(range(total_num), valid_num) 

# train_image_index = random.sample(range(total_num), train_num)

for i in range(total_num):
    print('src image: {}, i={}'.format(valid_image_index[i], i))
    if i in valid_image_index:
        # 将图片和标签文件拷贝到对应文件夹下
        # print(labels_files_list[i])
        # print(labels_files_list[i].split('.')[0]+'.png')
        # input()
        shutil.move(os.path.join(VIS_train_image_path,labels_files_list[i].split('.')[0]+'.png'), os.path.join(VIS_val_image_path,labels_files_list[i]).split('.')[0]+'.png')

        shutil.move(os.path.join(IR_train_image_path,labels_files_list[i].split('.')[0]+'.png'), os.path.join(IR_val_image_path,labels_files_list[i]).split('.')[0]+'.png')

        shutil.move(os.path.join(VIS_train_label_path,labels_files_list[i]), os.path.join(VIS_val_label_path,labels_files_list[i]))
        shutil.move(os.path.join(IR_train_label_path,labels_files_list[i]), os.path.join(IR_val_label_path,labels_files_list[i]))




