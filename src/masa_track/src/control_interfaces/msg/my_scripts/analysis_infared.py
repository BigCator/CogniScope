import os
import json
from xml.etree.ElementTree import parse
from collections import Counter
import argparse
import collections


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--object_threshold",
        type=float,
        default=0.2,
        help="Object threshold considered for calculation into indicators.")
    parser.add_argument(
        "--category",
        type=str,
        default='modeled',
        help="The category to be evaluated. ChengshiLukou/YewaiLukou/modeled/few/unmodeled")
    args = parser.parse_args()
    
    category = args.category
    # 获取数据集中有哪些类别
    list_path = 'dataset/infared/label_list.txt'
    classes_list = []
    with open(list_path, 'r') as f:
        for line in f.readlines():
            parts = line.split() 
            classes = parts[0]
            classes_list.append(classes)

    all_categories = ['Che', 'Ren']

    # 选择要对哪些标签计算指标
    ren = ['Ren']
    che = ['Che']
    calculate_labels = ren
    exclude_labels =  [item for item in all_categories if item not in calculate_labels]
    # ===============================================================
    # ----------------------- pred ----------------------------------
    # ===============================================================
    with open("output/{}/bbox.json".format(category), 'r') as f:
        results = json.load(f)
    final_dict = {'bbox': [], 'score': [], 'label': [] }
    threshold = args.object_threshold
    for i, img_labels in enumerate(results['label']):
        final_dict['bbox'].append([])
        final_dict['score'].append([])
        final_dict['label'].append([])
        img_scores = results['score'][i]
        for j, score in enumerate(img_scores):
            if score >= threshold:
                final_dict['bbox'][i].append(results['bbox'][i][j])
                final_dict['score'][i].append(results['score'][i][j])
                final_dict['label'][i].append(results['label'][i][j])
    # ===============================================================
    # ----------------------- groundtruth ---------------------------
    # ===============================================================
    # 获取所有gt的xml文件
    gt_dir = 'test/{}/groundtruth'.format(category)

    files = os.listdir(gt_dir)
    files.sort()
    gt_files = []
    for i, gt_file in enumerate(files):
        file_path = os.path.join(gt_dir, gt_file)
        if os.path.isfile(file_path):
            gt_files.append(file_path)

    # 获取每个gt xml文件中的labels
    gt_results = []
    for file in gt_files:
        et = parse(file)
        root = et.getroot()
        objects = root.findall('object')
        categories = []
        for obj in objects:
            name = obj.find('name').text
            categories.append(name)
        gt_results.append(categories)

    # ===============================================================
    # ----------------------- calculation percision -----------------
    # ===============================================================
    for i, img_labels in enumerate(final_dict['label']):
        for j, obj_label in enumerate(img_labels):
            final_dict['label'][i][j] = classes_list[int(obj_label)]
    pred_results = final_dict['label']

    # 计算指标
    Accuracy_list = []
    Recall_list = []
    F1Score_list = []
    num_frame = len(gt_results)
    bad_accuracy = []
    for i in range(num_frame):
        try:
            pred = pred_results[i]
            gt_result = gt_results[i]
        except:
            breakpoint()
        useful_pred = [obj for obj in pred if obj not in exclude_labels]
        useful_gt = [obj for obj in gt_result if obj not in exclude_labels]
        pred = useful_pred
        gt_result = useful_gt

        # 计算各标签数量
        gt = collections.Counter(gt_result)
        exclude_num = sum([gt[label] for label in exclude_labels])
        # 初始化TP, FP, FN 计数
        tp = 0
        fp = 0
        fn = 0
        # 逐个比较真实标签和预测标签,统计TP/FP/FN
        for label in pred:
            if label in exclude_labels:
                continue
            if label in gt:
                tp += 1
                gt[label] -= 1
            else: 
                fp += 1
        # 计算还未预测出的FN
        for label, rest_num in gt.items():
            if label in exclude_labels:
                continue
            fn += rest_num
            
        # 计算metrics   
        accuracy = tp / (tp + fp) if (tp + fp) != 0 else 0
        recall = tp / (tp + fn) if (tp + fn) != 0 else 0
        if tp == 0 :
            accuracy = 0.97 if len(gt) - exclude_num == 0 else 0
            recall = 0.97 if len(gt) - exclude_num == 0 else 0
        if (accuracy + recall) != 0:
            f1 = 2 * accuracy * recall / (accuracy + recall)
        elif len(gt) - exclude_num == 0:
            f1 = 0.97
        else:
            f1 = 0
        if f1 < 0.85:
            # print(f1, gt_files[i])
            bad_accuracy.append(i)
        # if (tp + fp) == 0 or (tp + fn) == 0 or tp == 0:
        #     continue
        # accuracy = tp / (tp + fp)
        # recall = tp / (tp + fn)
        # f1 = 2 * accuracy * recall / (accuracy + recall)

        Accuracy_list.append(accuracy)
        Recall_list.append(recall)
        F1Score_list.append(f1)

    Accuracy = sum(Accuracy_list)/len(Accuracy_list)
    Recall = sum(Recall_list)/len(Recall_list)
    F1_Score = sum(F1Score_list)/len(F1Score_list)
    # print(len(bad_accuracy))
    
    # print("Accuracy of {}: {:.4f}".format(category, Accuracy))
    # print("Recall of {}: {:.4f}".format(category, Recall))
    # print("F1 Score of {}: {:.4f}".format(category, F1_Score))

    print("{}: Accuracy: {:.4f},  F1 Score: {:.4f}".format(calculate_labels[0], Accuracy, F1_Score))


if __name__ == '__main__':
    main()
