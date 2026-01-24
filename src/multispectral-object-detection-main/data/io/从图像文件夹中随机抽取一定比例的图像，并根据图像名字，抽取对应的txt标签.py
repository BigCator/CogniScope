import os
import random
import shutil

##从图像文件夹中随机抽取一定比例的图像，并根据图像名字，抽取对应的txt标签
def moveFile():
        Imgdir = "/media/disk4T/ljw/data/M3FD_Detection_TwoStream/"#图像文件夹
        img_target_dir = "/media/disk8T/f4/data/M3FD_YOLO/quan/val/images/"#划分目标图像文件夹
        Txtdir = "/media/disk8T/f4/data/M3FD_YOLO/quan/train/labels/"#标签文件夹
        Txt_target_dir="/media/disk8T/f4/data/M3FD_YOLO/quan/val/labels/"#划分目标标签文件夹

        pathDir = os.listdir(Imgdir)    #获取图像列表
        filenumber=len(pathDir)
        rate=0.2    #定义抽取图片的比例
        random_imgnum=int(filenumber*rate) #按照比例从文件夹中取一定数量图片
        sample = random.sample(pathDir, random_imgnum)  #随机选取random_imgnum数量的样本图片
        print (sample)
        for imgname in sample:
                #name0 = os.path.join(outdir1,os.path.basename(name))
                nametxt=os.path.splitext(imgname)[0]
                shutil.move(Imgdir+imgname, img_target_dir+imgname)
                shutil.move(Txtdir+nametxt+'.txt', Txt_target_dir+nametxt+'.txt')
        return

if __name__ == '__main__':
    

    moveFile()
