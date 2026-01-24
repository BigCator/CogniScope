import os.path
import xml.etree.ElementTree as ET
import os
import random
# class_names = ['People', 'Car', 'Bus', 'Motorcycle', 'Lamp', 'Truck']
class_names = ['person','car','bicycle','dog']
# class_names = ['person']
xmlpath = "/media/disk4T/ljw/data/align/val_xml/"  # 原xml路径
txtpath = "/media/disk4T/ljw/data/align/yolo_4_class/rgb/val/labels/"  # 转换后txt文件存放路径
if not os.path.exists(txtpath):
    os.makedirs(txtpath)
files = []

for root, dirs, files in os.walk(xmlpath):
    None

number = len(files)
print(number)
i = 0
while i < number:

    name = files[i][0:-4]
    xml_name = name + ".xml"
    txt_name = name + ".txt"
    xml_file_name = xmlpath + xml_name
    txt_file_name = txtpath + txt_name

    xml_file = open(xml_file_name)
    tree = ET.parse(xml_file)
    root = tree.getroot()
    filename = root.find('filename').text

    image_name = root.find('filename').text
    w = int(root.find('size').find('width').text)
    h = int(root.find('size').find('height').text)

    f_txt = open(txt_file_name, 'w+')
    content = ""

    first = True

    for obj in root.iter('object'):

        name = obj.find('name').text


        class_num = class_names.index(name)

        xmlbox = obj.find('bndbox')

        x1 = int(xmlbox.find('xmin').text)
        x2 = int(xmlbox.find('xmax').text)
        y1 = int(xmlbox.find('ymin').text)
        y2 = int(xmlbox.find('ymax').text)

        if first:
            content += str(class_num) + " " + \
                       str((x1 + x2) / 2 / w) + " " + str((y1 + y2) / 2 / h) + " " + \
                       str((x2 - x1) / w) + " " + str((y2 - y1) / h)
            first = False
        else:
            content += "\n" + \
                       str(class_num) + " " + \
                       str((x1 + x2) / 2 / w) + " " + str((y1 + y2) / 2 / h) + " " + \
                       str((x2 - x1) / w) + " " + str((y2 - y1) / h)

    # print(str(i / (number - 1) * 100) + "%\n")
    print(content)
    f_txt.write(content)
    f_txt.close()
    xml_file.close()
    i += 1

print("done!")
