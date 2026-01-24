import os
import random
import cv2

trainval_percent = 0.9
train_percent = 0.95

data_root = "F:/Project_code/yolov7-main/VOCdevkit/VOC2007/"

fdir = data_root + 'ImageSets/Main/'
if not os.path.exists(fdir):
    os.makedirs(fdir)
# xmlfilepath = data_root + 'txts/'
xmlfilepath = data_root + 'Annotations/'
txtsavepath = fdir
total_xml = os.listdir(xmlfilepath)
random.shuffle(total_xml)

num = len(total_xml)
num_list = range(num)
tv = int(num * trainval_percent)
tr = int(tv * train_percent)
trainval = random.sample(num_list, tv)
trainval.sort(key=int)
train = random.sample(trainval, tr)
train.sort(key=int)

val = list(set(trainval) - set(train))
test = list(set(num_list) - set(trainval))

ftrainval = open(fdir + 'trainval.txt', 'w')
ftest = open(fdir + 'test.txt', 'w')
ftrain = open(fdir + 'train.txt', 'w')
fval = open(fdir + 'val.txt', 'w')

start = cv2.getTickCount()
for i in trainval:
    name = total_xml[i][:-4] + '\n'
    ftrainval.write(name)

for i in train:
    name = total_xml[i][:-4] + '\n'
    ftrain.write(name)

for i in val:
    name = total_xml[i][:-4] + '\n'
    fval.write(name)

for i in test:
    name = total_xml[i][:-4] + '\n'
    ftest.write(name)

end = cv2.getTickCount()
during = (end - start) / cv2.getTickFrequency()
print("time: {}".format(during))

ftrainval.close()
ftrain.close()
fval.close()
ftest.close()
