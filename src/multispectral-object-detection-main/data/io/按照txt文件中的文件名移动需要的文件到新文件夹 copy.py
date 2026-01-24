import os
import shutil
'''
程序目的：按照 目标文件名.txt 文件，从源文件夹 path1 中把 目标文件 挪到目标文件路径 path_new 
'''
if __name__ == '__main__':
    path1 = "/media/disk4T/ljw/data/align/AnnotatedImages/"  # 原始文件路径
    path_new = '/media/disk4T/ljw/data/align/yolo/ir/train/images/'  # 目标文件路径
    if not os.path.exists(path_new):
        os.makedirs(path_new)

    list_name = os.listdir(path1)
    # print(list_name)
    # print(len(list_name))

    # na = "/media/disk4T/ljw/data/align/align_validation.txt"
    na ="/media/disk4T/ljw/data/align/align_train.txt"
    a = 0
    # atis = 'atis_flight'
    with open(na, 'r', encoding='utf-8') as f:
        lines = f.readlines()
        for line in lines:
            # print(i)
            line = line.strip()  # 关键点，去掉乱七八糟的尾巴
            
            for ff in os.listdir(path1):
                fa = ff.split('.')[0]  # 删除文件的后缀
                fa = fa.strip()
                if line == fa:
                    fb = ff.split('_')[0] + '_' + ff.split('_')[1] + '_' + 'RGB.jpg'
                    # print(fb)
                    # input()
                    filename = os.path.join(path1, fb)
                    shutil.copy(filename, path_new)
                    a += 1
    f.close()
    print(a)

