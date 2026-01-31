# coding:utf-8
'''
功能描述：批量修改labelme标注的json文件中不知名的格式为kitti格式
'''

import os
import json
import tqdm
from collections import OrderedDict


data_dir = '/media/qolo/2TB/projects/ZW/datasets/zw_1111/trainval'  # 文件夹路径
json_files = []
for root, dirs, files in os.walk(data_dir):
    for file in files:
        if file.endswith(".json"):
            json_files.append(os.path.join(root, file))

for json_file in tqdm.tqdm(json_files, 'raw to kitti'):
    with open(json_file, 'r', encoding='utf-8') as jf:
        info = json.load(jf, object_pairs_hook=OrderedDict)

    up_up_dir = os.path.dirname(os.path.dirname(json_file))
    kitti_dir = os.path.join(up_up_dir, 'label_kitti')
    if not os.path.exists(kitti_dir):
        os.makedirs(kitti_dir)
    kitti_path = os.path.join(kitti_dir, os.path.basename(
        json_file).replace('json', 'txt'))

    with open(kitti_path, 'w', encoding='utf-8') as f:
        for i, obj in enumerate(info['shapes']):
            label = str(obj['label']) + ' '
            turncated = str(0.00) + ' '
            occluded = str(0) + ' '
            alpha = str(0.00) + ' '
            assert len(obj['points']) == 2
            if obj['points'][0][0] < obj['points'][1][0] and obj['points'][0][1] < obj['points'][1][1]:
                x1 = str(obj['points'][0][0]) + ' '
                y1 = str(obj['points'][0][1]) + ' '
                x2 = str(obj['points'][1][0]) + ' '
                y2 = str(obj['points'][1][1]) + ' '
            else:
                x1 = str(obj['points'][1][0]) + ' '
                y1 = str(obj['points'][1][1]) + ' '
                x2 = str(obj['points'][0][0]) + ' '
                y2 = str(obj['points'][0][1]) + ' '
            h = str(0.00) + ' '
            w = str(0.00) + ' '
            l = str(0.00) + ' '
            x = str(0.00) + ' '
            y = str(0.00) + ' '
            z = str(0.00) + ' '
            R_y = str(0.00) + ' '

            f.write(label + turncated + occluded + alpha +
                    x1 + y1 + x2 + y2 + h + w + l + x + y + z + R_y + '\n')

print('raw label to kitti format over!')
