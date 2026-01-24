import pathlib
from pyexpat import model
import torch
import torch.nn as nn

from ...ops.pointnet2.pointnet2_batch import pointnet2_modules
import os

class MSCF_Module(nn.Module):
    """多尺度上下文融合模块（即插即用）"""

    def __init__(self, in_channels, reduction_ratio=16, dilations=[1, 2, 4]):
        super().__init__()
        self.in_channels = in_channels

        # 多尺度分支
        self.dilated_convs = nn.ModuleList([
            nn.Sequential(
                nn.Conv1d(in_channels, in_channels // 2, 3, dilation=d, padding=d),
                nn.BatchNorm1d(in_channels // 2),
                nn.ReLU()
            ) for d in dilations
        ])

        # 特征融合
        self.fusion_conv = nn.Sequential(
            nn.Conv1d((in_channels // 2) * len(dilations), in_channels, 1),
            nn.BatchNorm1d(in_channels),
            nn.ReLU()
        )

        # 通道注意力
        self.channel_att = nn.Sequential(
            nn.AdaptiveAvgPool1d(1),
            nn.Conv1d(in_channels, in_channels // reduction_ratio, 1),
            nn.ReLU(),
            nn.Conv1d(in_channels // reduction_ratio, in_channels, 1),
            nn.Sigmoid()
        )

        # 残差缩放因子
        self.res_scale = nn.Parameter(torch.zeros(1))

    def forward(self, x):
        identity = x  # 保留原始特征

        # 多尺度特征提取
        branch_outputs = []
        for conv in self.dilated_convs:
            branch_outputs.append(conv(x))

        # 特征拼接与融合
        fused = torch.cat(branch_outputs, dim=1)
        fused = self.fusion_conv(fused)

        # 通道注意力加权
        channel_weights = self.channel_att(fused)
        weighted = fused * channel_weights

        # 残差连接
        return identity + self.res_scale * weighted
# ============================

class MSCF_Backbone(nn.Module):
    """ Backbone for IA-SSD"""

    def __init__(self, model_cfg, input_channels, **kwargs):
        super().__init__()
        self.model_cfg = model_cfg
        self.num_class = model_cfg.num_class

        self.SA_modules = nn.ModuleList()
        channel_in = input_channels - 3
        channel_out_list = [channel_in]

        self.num_points_each_layer = []

        sa_config = self.model_cfg.SA_CONFIG
        self.layer_types = sa_config.LAYER_TYPE
        self.ctr_idx_list = sa_config.CTR_INDEX
        self.layer_inputs = sa_config.LAYER_INPUT
        self.aggregation_mlps = sa_config.get('AGGREGATION_MLPS', None)
        self.confidence_mlps = sa_config.get('CONFIDENCE_MLPS', None)
        self.max_translate_range = sa_config.get('MAX_TRANSLATE_RANGE', None)

        # =====================================================
        # add options in backbone configuration, a path to save 
        # intermediate features during grouping at inference
        # self.save_features_dir = path/to/save or None
        # =====================================================
        self.save_features_dir = model_cfg.get('SAVE_FEAT_DIR', None)
        # only use pooling for visualizations this option is injected in the main script
        self.use_pooling_weight = model_cfg.get('USE_POOLING_WEIGHT', False)

        for k in range(sa_config.NSAMPLE_LIST.__len__()):
            if isinstance(self.layer_inputs[k], list): ###
                channel_in = channel_out_list[self.layer_inputs[k][-1]]
            else:
                channel_in = channel_out_list[self.layer_inputs[k]]

            if self.layer_types[k] == 'SA_Layer':
                mlps = sa_config.MLPS[k].copy()
                channel_out = 0
                for idx in range(mlps.__len__()):
                    mlps[idx] = [channel_in] + mlps[idx]
                    channel_out += mlps[idx][-1]

                if self.aggregation_mlps and self.aggregation_mlps[k]:
                    aggregation_mlp = self.aggregation_mlps[k].copy()
                    if aggregation_mlp.__len__() == 0:
                        aggregation_mlp = None
                    else:
                        channel_out = aggregation_mlp[-1]
                else:
                    aggregation_mlp = None

                if self.confidence_mlps and self.confidence_mlps[k]:
                    confidence_mlp = self.confidence_mlps[k].copy()
                    if confidence_mlp.__len__() == 0:
                        confidence_mlp = None
                else:
                    confidence_mlp = None

                self.SA_modules.append(
                    pointnet2_modules.PointnetSAModuleMSG_WithSampling(
                        npoint_list=sa_config.NPOINT_LIST[k],
                        sample_range_list=sa_config.SAMPLE_RANGE_LIST[k],
                        sample_type_list=sa_config.SAMPLE_METHOD_LIST[k],
                        radii=sa_config.RADIUS_LIST[k],
                        nsamples=sa_config.NSAMPLE_LIST[k],
                        mlps=mlps,
                        use_xyz=True,                                                
                        dilated_group=sa_config.DILATED_GROUP[k],
                        aggregation_mlp=aggregation_mlp,
                        confidence_mlp=confidence_mlp,
                        num_class = self.num_class,
                        use_pooling_weights=self.use_pooling_weight
                    )
                )

            elif self.layer_types[k] == 'Vote_Layer':
                self.SA_modules.append(pointnet2_modules.Vote_layer(mlp_list=sa_config.MLPS[k],
                                                                    pre_channel=channel_out_list[self.layer_inputs[k]],
                                                                    max_translate_range=self.max_translate_range
                                                                    )
                                       )
            elif self.layer_types[k] == 'PCT_Layer':
                mlps = self.model_cfg.SA_CONFIG.MLPS[k].copy()
                try:
                    for idx in range(mlps.__len__()):
                        mlps[idx] = [channel_in] + mlps[idx]
                except:
                    pass
                self.SA_modules.append(
                    pointnet2_modules.AttentiveSAModule(
                        npoint_list=self.model_cfg.SA_CONFIG.NPOINT_LIST[k],
                        radii=self.model_cfg.SA_CONFIG.RADIUS_LIST[k],
                        nsamples=self.model_cfg.SA_CONFIG.NSAMPLE_LIST[k],
                        mlps=mlps,
                        use_xyz=True,
                        out_channel=self.model_cfg.SA_CONFIG.AGGREGATION_MLPS[k][0]
                    )
                )
            
                channel_out = self.model_cfg.SA_CONFIG.AGGREGATION_MLPS[k][0]
            channel_out_list.append(channel_out)

            # ====== 添加MSCF模块配置 ======
            self.use_mscf = model_cfg.get('USE_MSCF', False)
            if self.use_mscf:
                self.mscf_position = model_cfg.get('MSCF_POSITION', 'pre')
                reduction_ratio = model_cfg.get('MSCF_RATIO', 8)
                dilations = model_cfg.get('MSCF_DILATIONS', [1, 2, 4])

                # 在最终输出前添加MSCF模块
                self.mscf_module = MSCF_Module(
                    in_channels=channel_out_list[-1],
                    reduction_ratio=reduction_ratio,
                    dilations=dilations
                )
            # ============================

        self.num_point_features = channel_out


    def break_up_pc(self, pc):
        batch_idx = pc[:, 0]
        xyz = pc[:, 1:4].contiguous()
        features = (pc[:, 4:].contiguous() if pc.size(-1) > 4 else None)
        return batch_idx, xyz, features

    def forward(self, batch_dict):
        """
        Args:
            batch_dict:
                batch_size: int
                vfe_features: (num_voxels, C)
                points: (num_points, 4 + C), [batch_idx, x, y, z, ...]
        Returns:
            batch_dict:
                encoded_spconv_tensor: sparse tensor
                point_features: (N, C)
        """
        batch_size = batch_dict['batch_size']
        points = batch_dict['points']
        batch_idx, xyz, features = self.break_up_pc(points)

        xyz_batch_cnt = xyz.new_zeros(batch_size).int()
        for bs_idx in range(batch_size):
            xyz_batch_cnt[bs_idx] = (batch_idx == bs_idx).sum()

        assert xyz_batch_cnt.min() == xyz_batch_cnt.max()
        xyz = xyz.view(batch_size, -1, 3)
        features = features.view(batch_size, -1, features.shape[-1]).permute(0, 2, 1).contiguous() if features is not None else None ###

        encoder_xyz, encoder_features, sa_ins_preds = [xyz], [features], []
        encoder_coords = [torch.cat([batch_idx.view(batch_size, -1, 1), xyz], dim=-1)]

        li_cls_pred = None
        for i in range(len(self.SA_modules)):

            # print('self.SA_modules:',self.SA_modules)
            # print(len(self.SA_modules))
            # input()
            
            xyz_input = encoder_xyz[self.layer_inputs[i]]
            feature_input = encoder_features[self.layer_inputs[i]]

            if self.layer_types[i] == 'SA_Layer':
                ctr_xyz = encoder_xyz[self.ctr_idx_list[i]] if self.ctr_idx_list[i] != -1 else None
                # =====================================================
                # input parameter during the SA_Layer forward to save intermediate points
                # =====================================================
                if self.training:
                    save_path = None
                elif self.save_features_dir is None:
                    save_path = None
                else:
                    from pathlib import Path
                    layer_name = 'Layer_' + str(i)
                    save_path = Path(self.save_features_dir) / layer_name
                    
                    save_path = str(save_path)
                    if not os.path.exists(save_path):
                        os.mkdir(save_path)
                # construct a saving path for different layer

                li_xyz, li_features, li_cls_pred = self.SA_modules[i](xyz_input, feature_input, li_cls_pred, ctr_xyz=ctr_xyz, save_features_dir=save_path, frame_id=batch_dict['frame_id'][0])

                # if li_cls_pred is not None:
                    
                #     print('li_cls_pred:',li_cls_pred.shape)
                
                # print('li_xyz:',li_xyz.shape)
              
                # print('li_features:',li_features.shape)
                # input()

            elif self.layer_types[i] == 'Vote_Layer': #i=4
                li_xyz, li_features, xyz_select, ctr_offsets = self.SA_modules[i](xyz_input, feature_input)
                centers = li_xyz
                centers_origin = xyz_select
                center_origin_batch_idx = batch_idx.view(batch_size, -1)[:, :centers_origin.shape[1]]
                encoder_coords.append(torch.cat([center_origin_batch_idx[..., None].float(),centers_origin.view(batch_size, -1, 3)],dim =-1))
            elif self.layer_types[i] == 'PCT_Layer': # final layer
                ctr_xyz = encoder_xyz[self.ctr_idx_list[i]] if self.ctr_idx_list[i] != -1 else None
                li_xyz, li_features = self.SA_modules[i](xyz_input, feature_input, ctr_xyz)
                li_cls_pred = None
            if torch.isnan(li_xyz).sum() > 0:
                raise RuntimeError('Nan in li_xyz!')
            encoder_xyz.append(li_xyz)
            li_batch_idx = batch_idx.view(batch_size, -1)[:, :li_xyz.shape[1]]
            encoder_coords.append(torch.cat([li_batch_idx[..., None].float(),li_xyz.view(batch_size, -1, 3)],dim =-1))
            encoder_features.append(li_features)            
            if li_cls_pred is not None:
                li_cls_batch_idx = batch_idx.view(batch_size, -1)[:, :li_cls_pred.shape[1]]
                sa_ins_preds.append(torch.cat([li_cls_batch_idx[..., None].float(),li_cls_pred.view(batch_size, -1, li_cls_pred.shape[-1])],dim =-1)) 
                pass
            else:
                sa_ins_preds.append([])
           
        ctr_batch_idx = batch_idx.view(batch_size, -1)[:, :li_xyz.shape[1]]
        ctr_batch_idx = ctr_batch_idx.contiguous().view(-1)
        batch_dict['ctr_offsets'] = torch.cat((ctr_batch_idx[:, None].float(), ctr_offsets.contiguous().view(-1, 3)), dim=1)
        batch_dict['centers'] = torch.cat((ctr_batch_idx[:, None].float(), centers.contiguous().view(-1, 3)), dim=1)
        batch_dict['centers_origin'] = torch.cat((ctr_batch_idx[:, None].float(), centers_origin.contiguous().view(-1, 3)), dim=1)
        batch_dict['ctr_batch_idx'] = ctr_batch_idx
        
        center_features = encoder_features[-1].permute(0, 2, 1).contiguous().view(-1, encoder_features[-1].shape[1]) # shape?
        batch_dict['centers_features'] = center_features

        # ====== 添加MSCF处理逻辑 ======
        if hasattr(self, 'mscf_module'):
            # 选项1：在原始特征上应用（保持[B, C, N]格式）
            if self.mscf_position == 'pre':
                # 增强原始点云特征
                enhanced_features = self.mscf_module(encoder_features[-1])
                center_features = enhanced_features.permute(0, 2, 1).contiguous().view(-1, enhanced_features.shape[1])

            # 选项2：在中心特征上应用
            elif self.mscf_position == 'post':
                # 先获取原始中心特征
                center_features = encoder_features[-1].permute(0, 2, 1).contiguous().view(-1,
                                                                                          encoder_features[-1].shape[1])

                # 转换回点云格式进行增强 [B, C, N]
                batch_size, num_points, _ = encoder_xyz[-1].shape
                center_features_reshaped = center_features.view(batch_size, num_points, -1).permute(0, 2, 1)
                enhanced_center = self.mscf_module(center_features_reshaped)

                # 转换回中心特征格式 [N, C]
                center_features = enhanced_center.permute(0, 2, 1).contiguous().view(-1, enhanced_center.shape[1])

        else:
            # 未启用MSCF时使用原始处理
            center_features = encoder_features[-1].permute(0, 2, 1).contiguous().view(-1, encoder_features[-1].shape[1])

        batch_dict['centers_features'] = center_features
        # ============================
        # check encoder xyzs
        if torch.isnan(centers).sum() > 0:
            raise RuntimeError('Nan in centers!')


        batch_dict['encoder_xyz'] = encoder_xyz
        batch_dict['encoder_coords'] = encoder_coords
        batch_dict['sa_ins_preds'] = sa_ins_preds
        batch_dict['encoder_features'] = encoder_features # not used later?
        
        
        ###save per frame 
        # if self.model_cfg.SA_CONFIG.get('SAVE_SAMPLE_LIST',False) and not self.training:  
        #     import numpy as np 
        #     # result_dir = np.load('/home/yifan/tmp.npy', allow_pickle=True)
        #     result_dir = pathlib.Path('/root/dj/code/CenterPoint-KITTI/output/sample_result_radar')
        #     for i in range(batch_size)  :
        #         # i=0      
        #         # point_saved_path = '/home/yifan/tmp'
        #         point_saved_path = result_dir / 'sample_list_save'
        #         os.makedirs(point_saved_path, exist_ok=True)
        #         idx = batch_dict['frame_id'][i]
        #         xyz_list = []
        #         gt = batch_dict['gt_boxes'][i].cpu().numpy()
        #         for sa_xyz in encoder_xyz:
        #             xyz_list.append(sa_xyz[i].cpu().numpy()) 
        #         idx = str(idx)
        #         if '/' in idx: # Kitti_tracking
        #             sample_xyz = point_saved_path / idx.split('/')[0] / ('sample_list_' + ('%s' % idx.split('/')[1]) + '_xyz')
        #             sample_gt = point_saved_path / idx.split('/')[0] / ('sample_list_' + ('%s' % idx.split('/')[1]) + '_gt')
        #             os.makedirs(point_saved_path / idx.split('/')[0], exist_ok=True)

        #         else:
        #             sample_xyz = point_saved_path / ('sample_list_' + ('%s' % idx) + '_xyz')
        #             sample_gt = point_saved_path / ('sample_list_' + ('%s' % idx) + '_gt')
                
        #         np.save(str(sample_gt), gt)
        #         np.save(str(sample_xyz), xyz_list)

                # np.save(str(new_file), point_new.detach().cpu().numpy())
        
        return batch_dict