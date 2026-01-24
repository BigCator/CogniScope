import os
 
path = "/media/disk4T/ljw/data/align/yolo_4_class/ir/val/labels/"
files = os.listdir(path)
 
i = 0
for file in files:
    old = path + os.sep + files[i]
    new = path + os.sep + file.replace('PreviewData','RGB')
    os.rename(old,new)
    i+=1
 
print(i)