import pathlib
import torch
import torch.nn as nn
from ...ops.pointnet2.pointnet2_batch import pointnet2_modules
import os


class SELayer(nn.Module):
    def __init__(self, channel, reduction=16):
        super(SELayer, self).__init__()
        self.avg_pool = nn.AdaptiveAvgPool2d(1)
        self.fc = nn.Sequential(
            nn.Linear(channel, channel // reduction, bias=False),
            nn.ReLU(inplace=True),
            nn.Linear(channel // reduction, channel, bias=False),
            nn.Sigmoid()
        )

    def forward(self, x):
        b, c, h, w = x.size()
        y = self.avg_pool(x).view(b, c)
        y = self.fc(y).view(b, c, 1, 1)
        return x * y.expand_as(x)


class ECALayer(nn.Module):
    def __init__(self, channel, k_size=3):
        super(ECALayer, self).__init__()
        self.avg_pool = nn.AdaptiveAvgPool2d(1)
        self.conv = nn.Conv1d(1, 1, kernel_size=k_size,
                              padding=(k_size - 1) // 2, bias=False)
        self.sigmoid = nn.Sigmoid()

    def forward(self, x):
        y = self.avg_pool(x)
        y = self.conv(y.squeeze(-1).transpose(-1, -2)).transpose(-1, -2).unsqueeze(-1)
        y = self.sigmoid(y)
        return x * y.expand_as(x)


class ECA_SE_Backbone(nn.Module):
    """ 完全修复版：确保注意力模块正确初始化和使用 """

    def __init__(self, model_cfg, input_channels, **kwargs):
        super().__init__()
        self.model_cfg = model_cfg
        self.num_class = model_cfg.num_class

        # 注意力模块配置
        self.use_se = model_cfg.get('USE_SE', False)
        self.use_eca = model_cfg.get('USE_ECA', False)
        self.se_reduction = model_cfg.get('SE_REDUCTION', 16)
        self.se_layer_index = model_cfg.get('SE_LAYER_INDEX', [])
        self.eca_layer_index = model_cfg.get('ECA_LAYER_INDEX', [])

        # 使用Identity模块替代None
        self.se_modules = nn.ModuleList()
        self.eca_modules = nn.ModuleList()

        self.SA_modules = nn.ModuleList()
        channel_in = input_channels - 3
        channel_out_list = [channel_in]

        sa_config = self.model_cfg.SA_CONFIG
        self.layer_types = sa_config.LAYER_TYPE
        self.ctr_idx_list = sa_config.CTR_INDEX
        self.layer_inputs = sa_config.LAYER_INPUT
        self.aggregation_mlps = sa_config.get('AGGREGATION_MLPS', None)
        self.confidence_mlps = sa_config.get('CONFIDENCE_MLPS', None)
        self.max_translate_range = sa_config.get('MAX_TRANSLATE_RANGE', None)

        self.save_features_dir = model_cfg.get('SAVE_FEAT_DIR', None)
        self.use_pooling_weight = model_cfg.get('USE_POOLING_WEIGHT', False)

        # 构建网络层
        for k in range(len(sa_config.NSAMPLE_LIST)):
            # 获取输入通道数
            if isinstance(self.layer_inputs[k], list):
                channel_in = channel_out_list[self.layer_inputs[k][-1]]
            else:
                channel_in = channel_out_list[self.layer_inputs[k]]

            # 构建SA层
            if self.layer_types[k] == 'SA_Layer':
                mlps = sa_config.MLPS[k].copy()
                channel_out = 0
                for idx in range(len(mlps)):
                    mlps[idx] = [channel_in] + mlps[idx]
                    channel_out += mlps[idx][-1]

                if self.aggregation_mlps and len(self.aggregation_mlps[k]) > 0:
                    channel_out = self.aggregation_mlps[k][-1]
                    aggregation_mlp = self.aggregation_mlps[k].copy()
                else:
                    aggregation_mlp = None

                if self.confidence_mlps and len(self.confidence_mlps[k]) > 0:
                    confidence_mlp = self.confidence_mlps[k].copy()
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
                        num_class=self.num_class,
                        use_pooling_weights=self.use_pooling_weight
                    )
                )

            elif self.layer_types[k] == 'Vote_Layer':
                self.SA_modules.append(pointnet2_modules.Vote_layer(
                    mlp_list=sa_config.MLPS[k],
                    pre_channel=channel_out_list[self.layer_inputs[k]],
                    max_translate_range=self.max_translate_range
                ))
                # 为投票层设置固定输出通道（根据原始实现）
                channel_out = 128

            elif self.layer_types[k] == 'PCT_Layer':
                mlps = sa_config.MLPS[k].copy()
                for idx in range(len(mlps)):
                    mlps[idx] = [channel_in] + mlps[idx]
                self.SA_modules.append(
                    pointnet2_modules.AttentiveSAModule(
                        npoint_list=sa_config.NPOINT_LIST[k],
                        radii=sa_config.RADIUS_LIST[k],
                        nsamples=sa_config.NSAMPLE_LIST[k],
                        mlps=mlps,
                        use_xyz=True,
                        out_channel=sa_config.AGGREGATION_MLPS[k][0]
                    )
                )
                channel_out = sa_config.AGGREGATION_MLPS[k][0]

            channel_out_list.append(channel_out)

            # 关键修复：使用Identity模块代替None
            # 为当前层创建SE模块
            if self.use_se and k in self.se_layer_index:
                self.se_modules.append(SELayer(channel_out, self.se_reduction))
            else:
                self.se_modules.append(nn.Identity())

            # 为当前层创建ECA模块
            if self.use_eca and k in self.eca_layer_index:
                self.eca_modules.append(ECALayer(channel_out))
            else:
                self.eca_modules.append(nn.Identity())

        self.num_point_features = channel_out

    def break_up_pc(self, pc):
        batch_idx = pc[:, 0]
        xyz = pc[:, 1:4].contiguous()
        features = (pc[:, 4:].contiguous() if pc.size(-1) > 4 else None)
        return batch_idx, xyz, features

    def forward(self, batch_dict):
        batch_size = batch_dict['batch_size']
        points = batch_dict['points']
        batch_idx, xyz, features = self.break_up_pc(points)

        # 计算每个batch的点数
        xyz_batch_cnt = xyz.new_zeros(batch_size).int()
        for bs_idx in range(batch_size):
            xyz_batch_cnt[bs_idx] = (batch_idx == bs_idx).sum()

        # 假设所有batch的点数相同（通常如此）
        xyz = xyz.view(batch_size, -1, 3)

        # 处理特征 - 修复布尔判断问题
        if features is not None:
            features = features.view(batch_size, -1, features.shape[-1]).permute(0, 2, 1).contiguous()
        else:
            features = None

        # 初始化编码器状态
        encoder_xyz = [xyz]
        encoder_features = [features]
        sa_ins_preds = []
        encoder_coords = [torch.cat([batch_idx.view(batch_size, -1, 1), xyz], dim=-1)]

        li_cls_pred = None
        vote_outputs = []  # 存储投票层输出

        # 遍历所有SA模块
        for i in range(len(self.SA_modules)):
            xyz_input = encoder_xyz[self.layer_inputs[i]]
            feature_input = encoder_features[self.layer_inputs[i]]

            if self.layer_types[i] == 'SA_Layer':
                ctr_xyz = encoder_xyz[self.ctr_idx_list[i]] if self.ctr_idx_list[i] != -1 else None

                # 构建保存路径（如果需要）
                if self.training or not self.save_features_dir:
                    save_path = None
                else:
                    save_path = os.path.join(self.save_features_dir, f'Layer_{i}')
                    os.makedirs(save_path, exist_ok=True)

                # 执行SA层
                li_xyz, li_features, li_cls_pred = self.SA_modules[i](
                    xyz_input, feature_input, li_cls_pred,
                    ctr_xyz=ctr_xyz, save_features_dir=save_path,
                    frame_id=batch_dict.get('frame_id', [''])[0]
                )

            elif self.layer_types[i] == 'Vote_Layer':
                # 执行投票层
                li_xyz, li_features, xyz_select, ctr_offsets = self.SA_modules[i](xyz_input, feature_input)
                centers = li_xyz
                centers_origin = xyz_select
                center_origin_batch_idx = batch_idx.view(batch_size, -1)[:, :centers_origin.shape[1]]
                encoder_coords.append(
                    torch.cat([center_origin_batch_idx[..., None].float(), centers_origin.view(batch_size, -1, 3)],
                              dim=-1))

                # 存储投票层输出
                vote_outputs = [li_xyz, centers, centers_origin, ctr_offsets]

            elif self.layer_types[i] == 'PCT_Layer':
                ctr_xyz = encoder_xyz[self.ctr_idx_list[i]] if self.ctr_idx_list[i] != -1 else None
                li_xyz, li_features = self.SA_modules[i](xyz_input, feature_input, ctr_xyz)
                li_cls_pred = None

            # 应用注意力模块 - 现在总是可调用
            B, C, N = li_features.shape
            attn_input = li_features.view(B, C, 1, N).contiguous()

            # 应用SE模块
            attn_input = self.se_modules[i](attn_input)

            # 应用ECA模块
            attn_input = self.eca_modules[i](attn_input)

            # 恢复原始形状并确保连续性
            li_features = attn_input.squeeze(2).contiguous()

            # 检查NaN值
            if torch.isnan(li_xyz).sum() > 0:
                raise RuntimeError(f'NaN in li_xyz at layer {i}!')

            # 更新编码器状态
            encoder_xyz.append(li_xyz)
            li_batch_idx = batch_idx.view(batch_size, -1)[:, :li_xyz.shape[1]]
            encoder_coords.append(torch.cat([li_batch_idx[..., None].float(), li_xyz.view(batch_size, -1, 3)], dim=-1))
            encoder_features.append(li_features)

            # 处理分类预测
            if li_cls_pred is not None:
                li_cls_batch_idx = batch_idx.view(batch_size, -1)[:, :li_cls_pred.shape[1]]
                sa_ins_preds.append(torch.cat(
                    [li_cls_batch_idx[..., None].float(), li_cls_pred.view(batch_size, -1, li_cls_pred.shape[-1])],
                    dim=-1))
            else:
                sa_ins_preds.append([])

        # 更新batch_dict
        if vote_outputs:
            li_xyz, centers, centers_origin, ctr_offsets = vote_outputs
            ctr_batch_idx = batch_idx.view(batch_size, -1)[:, :li_xyz.shape[1]]
            ctr_batch_idx = ctr_batch_idx.contiguous().view(-1)

            batch_dict['ctr_offsets'] = torch.cat(
                (ctr_batch_idx[:, None].float(), ctr_offsets.contiguous().view(-1, 3)), dim=1)
            batch_dict['centers'] = torch.cat((ctr_batch_idx[:, None].float(), centers.contiguous().view(-1, 3)), dim=1)
            batch_dict['centers_origin'] = torch.cat(
                (ctr_batch_idx[:, None].float(), centers_origin.contiguous().view(-1, 3)), dim=1)
            batch_dict['ctr_batch_idx'] = ctr_batch_idx

        # 中心特征
        center_features = encoder_features[-1].permute(0, 2, 1).contiguous().view(-1, encoder_features[-1].shape[1])
        batch_dict['centers_features'] = center_features

        # 检查中心点是否有NaN
        if torch.isnan(centers).sum() > 0:
            raise RuntimeError('NaN in centers!')

        # 更新输出
        batch_dict['encoder_xyz'] = encoder_xyz
        batch_dict['encoder_coords'] = encoder_coords
        batch_dict['sa_ins_preds'] = sa_ins_preds
        batch_dict['encoder_features'] = encoder_features

        return batch_dict

