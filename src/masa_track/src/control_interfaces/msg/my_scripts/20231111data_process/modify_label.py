# coding:utf-8
'''
功能描述：批量修改labelme标注的json文件中的标签名，
原标签名为Yewailukou 等，统一修改为YewaiLukou
'''

import os
import json
import tqdm
from collections import OrderedDict


data_dir = '/media/qolo/2TB/projects/ZW/datasets/zw_1111/trainval/annotations_json'  # 文件夹路径
json_files = []
for root, dirs, files in os.walk(data_dir):
    for file in files:
        if file.endswith(".json"):
            json_files.append(os.path.join(root, file))

json_dict = None
for json_file in tqdm.tqdm(json_files, 'modifing label'):
    with open(json_file, 'r', encoding='utf-8') as jf:
        info = json.load(jf, object_pairs_hook=OrderedDict)
        json_dict = info
        for i, label in enumerate(info['shapes']):
            # 获取json文件中原标签名
            label_name = info['shapes'][i]['label']
            new_label_name = label_name
            if label_name is not None and label_name[0].islower():
                new_label_name = label_name[0].upper(
                ) + label_name[1:]  # 首字母需要大写
            if new_label_name == "Chengshilukou":
                new_label_name = "ChengshiLukou"  # 规定两个词语的首字母都要大写
            elif new_label_name == "Yewailukou":
                new_label_name = "YewaiLukou"  # 规定两个词语的首字母都要大写
            elif new_label_name == "Car":
                new_label_name = "Che"
            elif new_label_name == "Jvma":
                new_label_name = "Juma"
            elif new_label_name == "Zhansun" or new_label_name == "ZhansunZhuangbei":
                new_label_name = "Zhansunzhuangbei"
            elif new_label_name == "Tongxonta":
                new_label_name = "Tongxinta"

            # 将json文件中标签名进行统一修改替换
            json_dict['shapes'][i]['label'] = new_label_name

    # 将替换后的内容写入原文件
    with open(json_file, 'w') as new_jf:
        json.dump(json_dict, new_jf, indent=2)

print('change name over!')
