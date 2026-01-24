import os
path = r"/media/disk8T/f4/data/M3FD_YOLO_quan/M3FD_pretrain_YOLO/val/labels/"
filelist = os.listdir(path) #该文件夹下所有的文件（包括文件夹）
count=0#设置图片编号从1开始
for file in filelist:#打印出所有图片原始的文件名
    print(file)
for file in filelist:   #遍历所有文件
    Olddir=os.path.join(path,file)   #原来的文件路径
    if os.path.isdir(Olddir):   #如果是文件夹则跳过
        continue
    filename=os.path.splitext(file)[0]   #文件名
    filetype=os.path.splitext(file)[1]   #文件扩展名
    Newdir=os.path.join(path,str(count).zfill(5)+filetype)  #用字符串函数zfill 以0补全所需位数
    os.rename(Olddir,Newdir)#重命名
    count+=1