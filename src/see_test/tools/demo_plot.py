import argparse
import glob
import os
from pathlib import Path

from PIL import Image
import mayavi.mlab as mlab
import numpy as np
import torch
import imageio.v2 as imageio
from pcdet.config import cfg, cfg_from_yaml_file
from pcdet.datasets import DatasetTemplate
from pcdet.models import build_network, load_data_to_gpu
from pcdet.utils import common_utils
from visual_utils import visualize_utils as V

# 禁用 Mayavi 的图形界面窗口
mlab.options.offscreen = True

class DemoDataset(DatasetTemplate):
    def __init__(self, dataset_cfg, class_names, training=True, root_path=None, logger=None, ext='.bin'):
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

        input_dict = {
            'points': points,
            'frame_id': index,
        }

        data_dict = self.prepare_data(data_dict=input_dict)
        return data_dict

def parse_config():
    parser = argparse.ArgumentParser(description='arg parser')
    parser.add_argument('--cfg_file', type=str, default='cfgs/kitti_models/cfar-lidar.yaml',
                        help='specify the config for demo')
    parser.add_argument('--data_path', type=str, default='demo_data',
                        help='specify the point cloud data file path (e.g., 00001.bin)')
    parser.add_argument('--ckpt', type=str, default=None, help='specify the pretrained model')
    parser.add_argument('--ext', type=str, default='.bin', help='specify the extension of your point cloud data file')

    args = parser.parse_args()

    cfg_from_yaml_file(args.cfg_file, cfg)

    return args, cfg

def main():
    args, cfg = parse_config()
    logger = common_utils.create_logger()
    logger.info('-----------------Quick Demo of OpenPCDet-------------------------')

    # Ensure that data_path is a file and extract the directory
    data_path = Path(args.data_path)
    if not data_path.is_file():
        raise ValueError(f"The specified data path '{args.data_path}' is not a valid file.")
    
    # Get the directory of the provided .bin file
    root_path = data_path.parent
    demo_dataset = DemoDataset(
        dataset_cfg=cfg.DATA_CONFIG, class_names=cfg.CLASS_NAMES, training=False,
        root_path=root_path, ext=args.ext, logger=logger
    )
    logger.info(f'Total number of samples: \t{len(demo_dataset)}')

    model = build_network(model_cfg=cfg.MODEL, num_class=len(cfg.CLASS_NAMES), dataset=demo_dataset)
    model.load_params_from_file(filename=args.ckpt, logger=logger, to_cpu=True)
    model.cuda()
    model.eval()

    output_dir = 'det_output'
    os.makedirs(output_dir, exist_ok=True)  # Ensure the output directory exists

    # 视频保存路径
    video_name = 'result_video.avi'
    video_path = os.path.join(output_dir, video_name)
    frame_paths = []  # 用于保存所有帧路径，稍后用于生成视频

    # Get the index of the start file (e.g., 00001.bin)
    start_index = demo_dataset.sample_file_list.index(str(data_path))

    with torch.no_grad():
        for idx in range(start_index, start_index + 50):  # 读取下一个10个文件
            if idx >= len(demo_dataset):
                break

            logger.info(f'Processing frame index: \t{idx}')
            data_dict = demo_dataset[idx]
            data_dict = demo_dataset.collate_batch([data_dict])
            load_data_to_gpu(data_dict)
            pred_dicts, _ = model.forward(data_dict)

            # Visualize and save the frame
            V.draw_scenes(
                points=data_dict['points'][:, 1:], ref_boxes=pred_dicts[0]['pred_boxes'],
                ref_scores=pred_dicts[0]['pred_scores'], ref_labels=pred_dicts[0]['pred_labels']
            )

            # print(pred_dicts[0]['pred_boxes'])

            # 调整视角，使图像居中
            mlab.view(azimuth=180, elevation=60, distance=120, focalpoint=(0, 0, 0))

            # 获取渲染的图像并裁剪
            img = mlab.screenshot(antialiased=True)
            image = Image.fromarray(img)

            # 裁剪图像：只保留上半部分
            width, height = image.size
            upper_half = image.crop((0, 0, width, height // 1.8))

            # 再进行调整大小（reshape）为目标大小 (608, 336)
            reshaped_image = upper_half.resize((608, 336), Image.LANCZOS)

            # 直接保存裁剪和调整后的图像
            upper_half_path = os.path.join(output_dir, f'frame_{idx:03d}.png')
            reshaped_image.save(upper_half_path)

            # 保存帧路径，用于生成视频
            frame_paths.append(upper_half_path)

    # 使用 imageio 生成视频 (使用 MJPEG 编码器)
    with imageio.get_writer(video_path, fps=10, codec='libx264') as writer:
        for frame_path in frame_paths:
            image = imageio.imread(frame_path)  # 读取每一帧图像
            writer.append_data(image)  # 将每一帧写入视频

    logger.info(f'视频已保存到 {video_path}')

if __name__ == '__main__':
    main()

