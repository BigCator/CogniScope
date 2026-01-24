import argparse
import glob
from pathlib import Path
from pcdet.utils import calibration_kitti
import mayavi.mlab as mlab
import numpy as np
import torch
from matplotlib.patches import Rectangle as Rec
from pcdet.config import cfg, cfg_from_yaml_file
from pcdet.datasets import DatasetTemplate
from pcdet.models import build_network, load_data_to_gpu
from pcdet.utils import common_utils
# from visual_utils import visualize_utils as V
from visual_utils import visualize_utils as V
from PIL import Image
import matplotlib.pyplot as plt
from matplotlib.patches import Polygon

import matplotlib
matplotlib.use('Agg')


CLASS_COLORS = {
    'Pedestrian': 'dodgerblue',  # 行人 - 亮蓝色
    'Cyclist': 'gold',           # 骑行者 - 金黄色
    'Car': 'lime'                # 其他类别默认颜色
}

def save_gt_to_txt(gt_boxes, gt_names, frame_id, save_dir):
    """
    参数:
        gt_boxes: np.ndarray (N,7) → [x, y, z, l, w, h, angle]
        gt_names: np.ndarray (N,) → 类别名
        frame_id: 当前帧的标识符（用于文件名）
        save_dir: 保存目录路径
    """
    save_dir = Path(save_dir)
    save_dir.mkdir(parents=True, exist_ok=True)
    save_path = save_dir / f"{frame_id}.txt"
    
    with open(save_path, 'w') as f:
        for i in range(len(gt_boxes)):
            class_name = gt_names[i]
            x, y, z, l, w, h, angle = gt_boxes[i]
            line = f"{class_name} {x:.4f} {y:.4f} {z:.4f} {l:.4f} {w:.4f} {h:.4f} {angle:.4f}\n"
            f.write(line)
    print(f"Saved GT boxes to {save_path}")

def project_lidar_to_image(pts_lidar, calib, img_size):
    """
    正确的坐标变换顺序:
    LiDAR → (V2C) → Camera → (R0) → Rectified Camera → (P2) → Image
    """
    # 新增设备转换逻辑
    if isinstance(pts_lidar, torch.Tensor):
        if pts_lidar.is_cuda:
            pts_lidar = pts_lidar.cpu()
        pts_lidar = pts_lidar.numpy()
    elif not isinstance(pts_lidar, np.ndarray):
        raise TypeError("pts_lidar必须是numpy数组或PyTorch tensor")

    # 转换为齐次坐标 (4, N)
    pts_hom = np.hstack([pts_lidar, np.ones((pts_lidar.shape[0], 1))]).T  # 4xN
    # 步骤1: 雷达到原始相机坐标系 (3x4 @ 4xN → 3xN)
    pts_cam_raw = calib.V2C @ pts_hom
    # 步骤2: 应用矫正旋转 (3x3 @ 3xN → 3xN)
    pts_cam_rect = calib.R0 @ pts_cam_raw
    # 转换为投影齐次坐标 (4xN)
    pts_cam_hom = np.vstack([pts_cam_rect, np.ones((1, pts_cam_rect.shape[1]))])
    # 步骤3: 投影到图像平面 (3x4 @ 4xN → 3xN)
    pts_2d_hom = calib.P2 @ pts_cam_hom

    xs = pts_2d_hom[0, :] / pts_2d_hom[2, :]
    ys = pts_2d_hom[1, :] / pts_2d_hom[2, :]
    # 生成有效性掩膜
    valid = (xs >= 0) & (xs < img_size[1]) & (ys >= 0) & (ys < img_size[0])
    
    # print("V2C shape:", calib.V2C.shape)
    # print("pts_hom shape:", pts_hom.shape)
    # print("pts_cam_raw shape:", pts_cam_raw.shape)
    # print("pts_cam_rect shape:", pts_cam_rect.shape)
    # print("pts_2d_hom shape:", pts_2d_hom.shape)

    return np.c_[xs, ys], valid

# linewidth可以修改宽度
def draw_boxes_on_image(ax, corners_2d, color='red', linewidth=4): 
    """ 
    修改后的绘图函数：
    输入参数增加ax对象, 直接在指定axes上绘制
    """
    if corners_2d.shape[0] != 8:
        print(f"[WARN] 无效的角点数量: {corners_2d.shape[0]}，跳过绘制")
        return
    
    lines = [
        [0,1], [1,2], [2,3], [3,0], # 底面
        [4,5], [5,6], [6,7], [7,4], # 顶面
        [0,4], [1,5], [2,6], [3,7]
    ]
    
    for line in lines:
        try:
            x = [corners_2d[line[0],0], corners_2d[line[1],0]]
            y = [corners_2d[line[0],1], corners_2d[line[1],1]]
            ax.plot(x, y, color=color, linewidth=linewidth)
        except IndexError as e:
            print(f"绘图错误: {e}，跳过该线段")

def get_rot_corner(x,y,l,w,a):

    s,c = np.sin(a),np.cos(a)

    corner_x = x - l/2
    corner_y = y - w/2

    corner_x -= x
    corner_y -= y

    new_corner_x = corner_x*c - corner_y*s 
    new_corner_y = corner_x*s + corner_y*c

    new_corner_x += x
    new_corner_y += y

    return new_corner_x,new_corner_y

def transform_anno(loc, frame_id):
    x,y, z = loc[0], loc[1], loc[2]
    calib_path = "/workspace/ros2_yolo/src/see_test/data/lidar/training/calib/{0:06d}.txt".format(int(frame_id))
    calib = calibration_kitti.Calibration(calib_path)
    loc = np.array([[x,y,z]])
    loc_lidar = calib.rect_to_lidar(loc)
    x,y,z = loc_lidar[0]
    return x,y,z

def anno2plt(anno, color_dict, lw, frame_id, xz=False):
    dim = anno['dimensions']
    loc = anno['location']
    # angle = anno['rotation_y'] * 180 / 3.14
    angle = -(anno['rotation_y']+ np.pi / 2) 
    rec_list = []
    cls = anno['name']
    for idx in range(dim.shape[0]):
        name = cls[idx]
        # print(name)
        if name not in color_dict:
            color = 'gray'
        else:
            color = color_dict[name]
            # print(color)
    
        if xz:
            x, _, y = transform_anno(loc[idx], frame_id)
            # w, _, l = dim[idx]
            l, w, _ = dim[idx]  # 
            ang = -angle[idx]* 0
        else:
            # print(loc[idx])
            x, y, z = transform_anno(loc[idx], frame_id)
            # print(x,y)
            
            ### X -> LENGTH
            ### Y -> WIDTH 
            ### Z -> HEIGHT, not used. 
            # x,y,z = loc[idx]
            # w, l, _ = dim[idx]
            # print(dim[idx]) 
            l, h, w  = dim[idx] # <-- SHOULD BE CORRECT? 
            ang = angle[idx]
            # ang = 0
            # print(l,w,ang)
            # print("="*40)

            ax,ay = get_rot_corner(x,y,l,w,ang)
            ang = ang * 180 / 3.14
            # ax = x - (l/4)
            # ay = y - (w/4)

        rec_list += [Rec((ax, ay), l, w, ang, fill=False, color=color,lw=lw)]
    return rec_list

class DemoDataset(DatasetTemplate):
    def __init__(self, dataset_cfg, class_names, training=True, root_path=None, logger=None, ext='.bin'):
        """
        Args:
            root_path:
            dataset_cfg:
            class_names:
            training:
            logger:
        """
        super().__init__(
            dataset_cfg=dataset_cfg, class_names=class_names, training=training, root_path=root_path, logger=logger
        )
        self.root_path = root_path
        self.ext = ext
        data_file_list = glob.glob(str(root_path / f'*{self.ext}')) if self.root_path.is_dir() else [self.root_path]

        data_file_list.sort()
        self.sample_file_list = data_file_list

    def __len__(self):
        return len(self.sample_file_list)

    def __getitem__(self, index):
        if self.ext == '.bin':
            points = np.fromfile(self.sample_file_list[index], dtype=np.float32).reshape(-1, 4)
        elif self.ext == '.npy':
            points = np.load(self.sample_file_list[index])
        else:
            raise NotImplementedError

        # ===== 新增GT标注加载代码 =====
        # 从点云路径推断标注路径
        bin_path = Path(self.sample_file_list[index])
        label_path = bin_path.parent.parent / 'label_2' / f"{bin_path.stem}.txt"  # 注意层级关系

        input_dict = {
            'points': points,
            'frame_id': int(bin_path.stem),
            'gt_boxes': np.empty((0, 7), dtype=np.float32),  # 初始化空数组
            'gt_names': np.empty((0,), dtype=str),            # 初始化空数组
            'picture_id': int(bin_path.stem)
        }
        # 添加路径存在性检查
        if not label_path.exists():
            print(f"[WARNING] Label file {label_path} not found!")

        if label_path.exists():
            gt_boxes = []
            gt_names = []
            try:
                with open(label_path, 'r') as f:
                    for line in f:
                        parts = line.strip().split()
                        if len(parts) < 15:
                            continue  # 跳过无效行
                            
                        obj_type = parts[0]
                        valid_classes = {'car', 'pedestrian', 'cyclist', 'bicycle'}  # 统一小写匹配
                        if obj_type.lower() not in valid_classes:
                            continue

                        # 可选：统一输出类别名称
                        obj_type = obj_type.capitalize()  # 首字母大写
                        if obj_type == 'Bicycle':
                            obj_type = 'Cyclist'  # 根据数据集规范统一命名
                        obj_type = parts[0].strip().lower()  # 统一转为小写

                        label_mapping = {
                            'car': 'Car',
                            'pedestrian': 'Pedestrian',
                            'cyclist': 'Cyclist',
                            'bicycle': 'Cyclist',      # 合并bicycle到cyclist
                            'bike': 'Cyclist'          # 处理其他别名
                        }

                        obj_type = label_mapping.get(obj_type, 'unknown')
                        if obj_type == 'unknown':
                            continue
                        # 解析参数（View of Delft → KITTI）
                        h = float(parts[8])
                        w = float(parts[9])
                        l = float(parts[10])
                        x = float(parts[11])
                        y = float(parts[12]) - h/2      # 调整y坐标到物体中心
                        z = float(parts[13])
                        ry = float(parts[14])
                        heading = -ry - np.pi/2     # 角度转换
                        
                        x_lidar, y_lidar, z_lidar = transform_anno([x, y, z], index)
                        gt_boxes.append([x_lidar, y_lidar, z_lidar, l, w, h, heading])
                        gt_names.append(obj_type)

                # 转换为numpy数组
                if len(gt_boxes) > 0:
                    input_dict['gt_boxes'] = np.array(gt_boxes, dtype=np.float32)
                    input_dict['gt_names'] = np.array(gt_names)
                    print(f"[Debug] Loaded {len(gt_boxes)} GT boxes")
                else:
                    print("[Debug] No valid GT boxes found")
                    
            except Exception as e:
                print(f"[ERROR] Failed to load labels: {str(e)}")

        print("\n=== Before Assigning ===")
        print("GT boxes list length:", len(gt_boxes))
        print("GT names list:", gt_names)

        data_dict = self.prepare_data(data_dict=input_dict)

        # === 在加载GT数据后添加保存逻辑 ===
        # if len(gt_boxes) > 0:
        #     input_dict['gt_boxes'] = np.array(gt_boxes, dtype=np.float32)
        #     gt_indices = [cfg.CLASS_NAMES.index(name) for name in gt_names]
        #     input_dict['gt_names'] = np.array(gt_indices, dtype=np.int32)

            # # 生成保存路径
            # bin_path = Path(self.sample_file_list[index])
            # frame_id = bin_path.stem  # 从文件名获取帧ID（如000123）
            #
            # # 调用保存函数（假设保存在数据根目录的gt_labels子目录）
            # save_gt_to_txt(
            #     gt_boxes=input_dict['gt_boxes'],
            #     gt_names=input_dict['gt_names'],
            #     frame_id=frame_id,
            #     save_dir=Path('/seeing_beyond/tools') / "gt_labels"
            # )

        return data_dict


def parse_config():
    parser = argparse.ArgumentParser(description='arg parser')
    parser.add_argument('--cfg_file', type=str, default='/workspace/ros2_yolo/src/see_test/tools/cfgs/kitti_models/car_pedes.yaml',
                        help='specify the config for demo')
    parser.add_argument('--data_path', type=str, default='/workspace/ros2_yolo/src/see_test/data/lidar/training/velodyne/000210.bin',
                        help='specify the point cloud data file or directory')
    parser.add_argument('--ckpt', type=str, default="/workspace/ros2_yolo/src/see_test/output/car_pedes/carla_initial/eval/eval_with_train/best_eval/best_epoch_checkpoint.pth", help='specify the pretrained model')
    parser.add_argument('--ext', type=str, default='.bin', help='specify the extension of your point cloud data file')
    parser.add_argument('--data_root', type=str, 
                       default='/workspace/ros2_yolo/src/see_test/data/lidar/training',
                       help='数据集根目录路径')
    args = parser.parse_args()

    cfg_from_yaml_file(args.cfg_file, cfg)

    return args, cfg


def main():
    args, cfg = parse_config()
    logger = common_utils.create_logger()
    logger.info('-----------------Quick Demo of OpenPCDet-------------------------')
    demo_dataset = DemoDataset(
        dataset_cfg=cfg.DATA_CONFIG, class_names=cfg.CLASS_NAMES, training=False,
        root_path=Path(args.data_path), ext=args.ext, logger=logger
    )
    logger.info(f'Total number of samples: \t{len(demo_dataset)}')

    model = build_network(model_cfg=cfg.MODEL, num_class=len(cfg.CLASS_NAMES), dataset=demo_dataset)
    model.load_params_from_file(filename=args.ckpt, logger=logger, to_cpu=True)
    model.cuda()
    model.eval()
    with torch.no_grad():
        for idx, data_dict in enumerate(demo_dataset):
            logger.info(f'Visualized sample index: \t{idx + 1}')
            data_dict = demo_dataset.collate_batch([data_dict])
            load_data_to_gpu(data_dict)
            pred_dicts, _ = model.forward(data_dict)

            picture_id = int(data_dict['picture_id'].item())
            print("picture_id is ",picture_id)
            bin_path = Path(demo_dataset.sample_file_list[idx])
            frame_id = bin_path.stem  # 获取文件名（不含扩展名）
            # 修改后（正确版本）
            if 'gt_boxes' in data_dict and data_dict['gt_boxes'].shape[1] > 0:  # batch维度为1时
                gt_boxes_vis = data_dict['gt_boxes'][0][:, :7].cpu().numpy()  # (N,7)
            else:
                gt_boxes_vis = None

            # 生成图像和校准文件路径
            image_path = Path(args.data_root) / 'image_2' / f"{frame_id}.jpg"
            calib_path = Path(args.data_root) / 'calib' / f"{frame_id}.txt"
            # 检查文件存在性
            if not image_path.exists():
                print(f"警告：图像文件 {image_path} 不存在")
                continue
            if not calib_path.exists():
                print(f"警告：校准文件 {calib_path} 不存在")
                continue

            calib = calibration_kitti.Calibration(calib_path) 
            ref_boxes=pred_dicts[0]['pred_boxes'].cpu().numpy()
            # 加载图像
            img = np.array(Image.open(image_path))
            h, w = img.shape[:2]

            fig, ax = plt.subplots(figsize=(16, 9))
            ax.imshow(img)
            ax.set_axis_off()
            # ===== 绘制真值框 =====
            if gt_boxes_vis is not None:
                corners_3d = V.boxes_to_corners_3d(gt_boxes_vis)
                for corners in corners_3d:
                    pts_2d, valid = project_lidar_to_image(corners, calib, (h, w))
                    if valid.sum() >= 8:  # 确保8个角点都有效
                        draw_boxes_on_image(ax, pts_2d, color='red')
            
            print("配置文件类别列表:", cfg.CLASS_NAMES)
            print("检测到的类别ID范围:", pred_dicts[0]['pred_labels'].min().item(), "到", pred_dicts[0]['pred_labels'].max().item())

            # ===== 绘制检测框 =====
            if ref_boxes is not None and 'pred_labels' in pred_dicts[0]:
                ref_corners = V.boxes_to_corners_3d(ref_boxes)
                for i, corners in enumerate(ref_corners):
                    pts_2d, valid = project_lidar_to_image(corners, calib, (h, w))
                    if valid.sum() >= 8:
                        # 获取预测类别ID并转换为名称
                        class_id = pred_dicts[0]['pred_labels'][i].item()-1
                        class_name = cfg.CLASS_NAMES[class_id]
                        # 选择对应颜色，未定义类别使用灰色
                        color = CLASS_COLORS.get(class_name, 'gray')  
                        draw_boxes_on_image(ax, pts_2d, color=color)
            
            # 统一保存/显示
            # plt.show
            plt.tight_layout()
            plt.savefig(f'/workspace/ros2_yolo/src/see_test/output/tools/picture_result/result_{picture_id:06d}.png', dpi=200, bbox_inches='tight')
            plt.close()  # 关闭图像释放内存

            V.draw_scenes(
                points=data_dict['points'][:, 1:], gt_boxes=gt_boxes_vis, 
                ref_boxes=pred_dicts[0]['pred_boxes'],ref_scores=pred_dicts[0]['pred_scores'], 
                ref_labels=pred_dicts[0]['pred_labels']
            )
            # mlab.show(stop=True)

    logger.info('Demo done.')


if __name__ == '__main__':
    main()
