import torch
import numpy as np
import sensor_msgs_py.point_cloud2 as pc2
from pcdet.config import cfg, cfg_from_yaml_file
from pcdet.models import build_network
from pcdet.utils import common_utils
from pcdet.datasets import build_dataloader
import time

class FusionDetector:
    def __init__(self, cfg_file, ckpt_file, device='cuda'):
        """
        完全复用验证时的配置和初始化方式
        """
        # 1. 加载配置
        cfg_from_yaml_file(cfg_file, cfg)
        self.logger = common_utils.create_logger()

        # 2. 创建 dataset（只需要 dataset，不需要 loader/sampler）
        dataset, _, _ = build_dataloader(
            dataset_cfg=cfg.DATA_CONFIG,
            class_names=cfg.CLASS_NAMES,
            batch_size=1,
            dist=False,
            workers=0,
            logger=self.logger,
            training=False,
            merge_all_iters_to_one_epoch=False
        )
        self.dataset = dataset
        self._fix_dataset_attributes()

        # 3. 构建模型
        self.model = build_network(
            model_cfg=cfg.MODEL,
            num_class=len(cfg.CLASS_NAMES),
            dataset=dataset
        )

        # 4. 加载权重
        self.model.load_params_from_file(filename=ckpt_file, logger=self.logger)
        self.model.to(device).eval()
        self.device = device

        # 打印模型设备信息
        first_param = next(self.model.parameters())
        self.logger.info(f"✅ 模型已加载到设备: {first_param.device}")
        self.logger.info(f"使用数据集: {dataset.__class__.__name__}")
        self.logger.info(f"Grid size: {dataset.grid_size}")

    def _fix_dataset_attributes(self):
        """修复 dataset 缺失的属性"""
        import numpy as np
        if self.dataset.grid_size is None:
            if not hasattr(self.dataset, 'point_cloud_range') or self.dataset.point_cloud_range is None:
                if hasattr(cfg, 'DATA_CONFIG') and hasattr(cfg.DATA_CONFIG, 'POINT_CLOUD_RANGE'):
                    self.dataset.point_cloud_range = cfg.DATA_CONFIG.POINT_CLOUD_RANGE
                else:
                    self.dataset.point_cloud_range = [0, -39.68, -3, 69.12, 39.68, 1]

            if not hasattr(self.dataset, 'voxel_size') or self.dataset.voxel_size is None:
                if hasattr(cfg, 'DATA_CONFIG') and hasattr(cfg.DATA_CONFIG, 'VOXEL_SIZE'):
                    self.dataset.voxel_size = cfg.DATA_CONFIG.VOXEL_SIZE
                else:
                    self.dataset.voxel_size = [0.16, 0.16, 4]

            pc_range = np.array(self.dataset.point_cloud_range)
            voxel_size = np.array(self.dataset.voxel_size)
            self.dataset.grid_size = ((pc_range[3:6] - pc_range[0:3]) / voxel_size).round().astype(np.int32).tolist()
            self.logger.info(f"✅ 已修复 grid_size: {self.dataset.grid_size}")
    def run_inference(self, lidar_msg, radar_msg):
        """
        高速推理版本（不使用 ros_numpy）：
        - 使用 np.frombuffer 直接解析 PointCloud2
        - 避免 pc2.read_points 的 Python 循环
        - 直接在 GPU 上构建张量
        """
        try:
            start_time = time.time()

            # ---------------------------------------------------------
            # 1. 高速解析 PointCloud2（10~20ms）
            # ---------------------------------------------------------
            def pc2_to_xyzf(msg, fields=("x", "y", "z", "intensity")):
                # 每个点的字节长度
                point_step = msg.point_step
                data = msg.data

                # 构造 dtype，必须包含 offset
                dtype_list = []
                for f in msg.fields:
                    if f.name in fields:
                        dtype_list.append((f.name, np.float32, 1, f.offset))

                # 构造结构化 dtype
                dtype = np.dtype({
                    'names': [f[0] for f in dtype_list],
                    'formats': [f[1] for f in dtype_list],
                    'offsets': [f[3] for f in dtype_list],
                    'itemsize': point_step
                })

                # 使用 frombuffer 解析结构化数组
                np_data = np.frombuffer(data, dtype=dtype)

                # 转成 N×len(fields)
                return np.vstack([np_data[f] for f in fields]).T


            lidar_points = pc2_to_xyzf(lidar_msg, ("x","y","z","intensity"))
            radar_points = pc2_to_xyzf(radar_msg, ("x","y","z","velocity"))


            # fused_points = np.concatenate([lidar_points, radar_points], axis=0)
            fused_points = lidar_points

            end_time_1 = time.time()
            print(f"[1] 点云解析+融合: {end_time_1 - start_time:.4f}s")

            # ---------------------------------------------------------
            # 2. 范围过滤
            # ---------------------------------------------------------
            if hasattr(self.dataset, 'point_cloud_range'):
                pc_range = self.dataset.point_cloud_range
                mask = (
                    (fused_points[:, 0] >= pc_range[0]) &
                    (fused_points[:, 0] < pc_range[3]) &
                    (fused_points[:, 1] >= pc_range[1]) &
                    (fused_points[:, 1] < pc_range[4]) &
                    (fused_points[:, 2] >= pc_range[2]) &
                    (fused_points[:, 2] < pc_range[5])
                )
                fused_points = fused_points[mask]

            # 限制最大点数（可选）
            max_points = 32000
            if fused_points.shape[0] > max_points:
                choice = np.random.choice(fused_points.shape[0], max_points, replace=False)
                fused_points = fused_points[choice]

            end_time_2 = time.time()
            print(f"[2] 过滤+采样: {end_time_2 - end_time_1:.4f}s")

            # ---------------------------------------------------------
            # 3. 构建 OpenPCDet 输入格式 [N, 5]
            # ---------------------------------------------------------
            num_points = fused_points.shape[0]
            batch_idx = np.zeros((num_points, 1))
            points_with_idx = np.hstack((batch_idx, fused_points))

            # 直接在 GPU 上构建张量
            points_tensor = torch.tensor(points_with_idx, dtype=torch.float32, device=self.device)

            batch_dict = {
                'points': points_tensor,
                'frame_id': [f"{lidar_msg.header.frame_id}_{radar_msg.header.frame_id}"],
                'batch_size': 1,
            }

            # CFAR attach 输入
            if hasattr(self.model, 'attach_model') and radar_points.shape[0] > 0:
                num_radar = radar_points.shape[0]
                radar_idx = np.zeros((num_radar, 1))
                radar_with_idx = np.hstack((radar_idx, radar_points))
                radar_tensor = torch.tensor(radar_with_idx, dtype=torch.float32, device=self.device)
                batch_dict['attach'] = radar_tensor

            end_time_3 = time.time()
            print(f"[3] 构建 batch_dict: {end_time_3 - end_time_2:.4f}s")

            # ---------------------------------------------------------
            # 4. GPU 推理
            # ---------------------------------------------------------
            with torch.no_grad():
                pred_dicts, recall_dicts = self.model(batch_dict)

            # ---------------------------------------------------------
            # 5. 置信度过滤（score threshold）
            # ---------------------------------------------------------
            SCORE_THRESHOLD = 0.4  # 你可以自己调

            for pred in pred_dicts:
                scores = pred['pred_scores']
                mask = scores > SCORE_THRESHOLD

                pred['pred_boxes'] = pred['pred_boxes'][mask]
                pred['pred_scores'] = pred['pred_scores'][mask]
                pred['pred_labels'] = pred['pred_labels'][mask]

            end_time_4 = time.time()
            print(f"[4] 模型推理: {end_time_4 - end_time_3:.4f}s")
            print(f"➡️ 总耗时: {end_time_4 - start_time:.4f}s\n")

            # print("\n================ pred_dicts 内容 ================")
            # for k, v in pred_dicts[0].items():
            #     if hasattr(v, "shape"):
            #         print(f"{k}: shape={v.shape}")
            #     else:
            #         print(f"{k}: {v}")
            # print("=================================================\n")
            # input("按任意键继续...")


            return pred_dicts

        except Exception as e:
            self.logger.error(f"推理错误: {e}")
            import traceback
            traceback.print_exc()
            return None


