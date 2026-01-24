import os
import shutil
'''
程序目的：按照 目标文件名.txt 文件，从源文件夹 path1 中把 目标文件 挪到目标文件路径 path_new 
'''
def movefile():
    path_image = '/media/disk4T/ljw/data/LLVIP/infrared/train/images'  #图片文件名
    path1 = "/media/disk4T/ljw/data/LLVIP/txts/"  # txt文件路径
    path_new = '/media/disk4T/ljw/data/LLVIP/infrared/train/labels'  # 目标文件路径
    # if not os.path.exists(path_new):
    #     os.makedirs(path_new)
    a = 0
    for line in os.listdir(path_image):  
        line = line.split('.')[0]
        for ff in os.listdir(path1):
            fa = ff.split('.')[0]  # 删除文件的后缀
            # fa = fa.strip()
            if line == fa:
                # fb = ff.split('_')[0] + '_' + ff.split('_')[1] + '_' + 'RGB.jpg'
                # fb = 
                # print(fb)
                # input()
                filename = os.path.join(path1, ff)
                shutil.copy(filename, path_new)
                a += 1
    # f.close()
    print(a)

def movefile1():
    path_image = '/media/disk4T/ljw/data/M3FD_Detection_TwoStream/Vis/train/images'  #图片文件名

    path_new = '/media/disk4T/ljw/data/M3FD_Detection_TwoStream/IR/train/images'  # 目标文件路径
    # if not os.path.exists(path_new):
    #     os.makedirs(path_new)
    a = 0
    for line in os.listdir(path_image):  
        # line = line.split('.')[0]
        if line not in os.listdir(path_new):

            print(line)
                # input()
                # filename = os.path.join(path1, ff)
                # shutil.copy(filename, path_new)
            a += 1
    # f.close()
    print(a)

if __name__ == '__main__':
    movefile1()

