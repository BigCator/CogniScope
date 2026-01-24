import torch
import torch.nn as nn
from ...ops.pointnet2.pointnet2_batch import pointnet2_modules
import os


class PointEMA(nn.Module):
    """即插即用的EMA模块"""

    def __init__(self, channels, factor=8):
        super().__init__()
        self.groups = max(1, channels // factor)
        self.channel_att = nn.Sequential(
            nn.AdaptiveAvgPool1d(1),
            nn.Conv1d(channels, max(4, channels // 8), 1),
            nn.ReLU(),
            nn.Conv1d(max(4, channels // 8), channels, 1),
            nn.Sigmoid()
        )
        self.mlp = nn.Sequential(
            nn.Conv1d(channels, channels // 4, 1),
            nn.BatchNorm1d(channels // 4),
            nn.ReLU(),
            nn.Conv1d(channels // 4, channels, 1)
        )
        self.alpha = nn.Parameter(torch.tensor(0.5))

    def forward(self, x):
        if x.size(-1) == 0:
            return x
        attn = self.channel_att(x)
        return x + self.alpha * (x * attn) + (1 - self.alpha) * self.mlp(x)


class ECALayer(nn.Module):
    """高效通道注意力模块"""

    def __init__(self, channel, k_size=3):
        super().__init__()
        self.avg_pool = nn.AdaptiveAvgPool2d(1)
        self.conv = nn.Conv1d(1, 1, kernel_size=k_size,
                              padding=(k_size - 1) // 2, bias=False)
        self.sigmoid = nn.Sigmoid()

    def forward(self, x):
        y = self.avg_pool(x)
        y = self.conv(y.squeeze(-1).transpose(-1, -2)).transpose(-1, -2).unsqueeze(-1)
        y = self.sigmoid(y)
        return x * y.expand_as(x)


class EMA_ECA_Backbone(nn.Module):
    """融合EMA和ECA的优化骨干网络"""

    def __init__(self, model_cfg, input_channels, **kwargs):
        super().__init__()
        self.model_cfg = model_cfg
        self.num_class = model_cfg.num_class

        # 模块配置
        self.use_ema = model_cfg.get('USE_EMA', False)
        self.use_eca = model_cfg.get('USE_ECA', False)

        # EMA配置 - 用于深层特征强化
        self.ema_layer_index = model_cfg.get('EMA_LAYER_INDEX', -2)  # 默认为倒数第二层
        self.ema_factor = model_cfg.get('EMA_FACTOR', 8)

        # ECA配置 - 用于浅层特征增强
        self.eca_layer_index = model_cfg.get('ECA_LAYER_INDEX', [0, 1, 2])
        self.eca_modules = nn.ModuleList()

        # 网络基础组件
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

        # 构建SA层和注意力模块
        for k in range(len(sa_config.NSAMPLE_LIST)):
            # 确定输入通道
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

            # 为当前层创建ECA模块（如果启用且在指定层）
            if self.use_eca and k in self.eca_layer_index:
                self.eca_modules.append(ECALayer(channel_out))
            else:
                # 使用Identity模块占位
                self.eca_modules.append(nn.Identity())

        # 创建EMA模块（如果启用）
        if self.use_ema:
            # 处理负索引
            if self.ema_layer_index < 0:
                ema_layer_idx = len(channel_out_list) + self.ema_layer_index - 1
            else:
                ema_layer_idx = self.ema_layer_index

            ema_channels = channel_out_list[ema_layer_idx]
            self.ema = PointEMA(ema_channels, factor=self.ema_factor)
        else:
            self.ema = None

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

        # 特征预处理
        xyz_batch_cnt = xyz.new_zeros(batch_size).int()
        for bs_idx in range(batch_size):
            xyz_batch_cnt[bs_idx] = (batch_idx == bs_idx).sum()

        xyz = xyz.view(batch_size, -1, 3)

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
        vote_outputs = None

        # 遍历所有SA模块
        for i in range(len(self.SA_modules)):
            xyz_input = encoder_xyz[self.layer_inputs[i]]
            feature_input = encoder_features[self.layer_inputs[i]]

            # 执行SA层
            if self.layer_types[i] == 'SA_Layer':
                ctr_xyz = encoder_xyz[self.ctr_idx_list[i]] if self.ctr_idx_list[i] != -1 else None

                if self.training or not self.save_features_dir:
                    save_path = None
                else:
                    save_path = os.path.join(self.save_features_dir, f'Layer_{i}')
                    os.makedirs(save_path, exist_ok=True)

                li_xyz, li_features, li_cls_pred = self.SA_modules[i](
                    xyz_input, feature_input, li_cls_pred,
                    ctr_xyz=ctr_xyz, save_features_dir=save_path,
                    frame_id=batch_dict.get('frame_id', [''])[0]
                )

            elif self.layer_types[i] == 'Vote_Layer':
                li_xyz, li_features, xyz_select, ctr_offsets = self.SA_modules[i](xyz_input, feature_input)
                centers = li_xyz
                centers_origin = xyz_select
                center_origin_batch_idx = batch_idx.view(batch_size, -1)[:, :centers_origin.shape[1]]
                encoder_coords.append(
                    torch.cat([center_origin_batch_idx[..., None].float(), centers_origin.view(batch_size, -1, 3)],
                              dim=-1))
                vote_outputs = (li_xyz, centers, centers_origin, ctr_offsets)

            elif self.layer_types[i] == 'PCT_Layer':
                ctr_xyz = encoder_xyz[self.ctr_idx_list[i]] if self.ctr_idx_list[i] != -1 else None
                li_xyz, li_features = self.SA_modules[i](xyz_input, feature_input, ctr_xyz)
                li_cls_pred = None

            # ==== 模块应用策略 ====
            # 1. 浅层应用ECA增强局部特征
            if self.use_eca and i in self.eca_layer_index:
                B, C, N = li_features.shape
                # 转换为4D格式 (B, C, 1, N)
                attn_input = li_features.view(B, C, 1, N).contiguous()
                attn_output = self.eca_modules[i](attn_input)
                li_features = attn_output.squeeze(2).contiguous()

            # 2. 深层应用EMA增强全局上下文
            # 计算当前层的EMA索引
            if self.ema_layer_index < 0:
                ema_target_idx = len(self.SA_modules) + self.ema_layer_index
            else:
                ema_target_idx = self.ema_layer_index

            if self.use_ema and i == ema_target_idx:
                li_features = self.ema(li_features)

            # 检查NaN值
            if torch.isnan(li_xyz).sum() > 0:
                raise RuntimeError(f'NaN in li_xyz at layer {i}!')

            # 更新编码器状态
            encoder_xyz.append(li_xyz)
            li_batch_idx = batch_idx.view(batch_size, -1)[:, :li_xyz.shape[1]]
            encoder_coords.append(torch.cat([li_batch_idx[..., None].float(), li_xyz.view(batch_size, -1, 3)], dim=-1))
            encoder_features.append(li_features)

            if li_cls_pred is not None:
                li_cls_batch_idx = batch_idx.view(batch_size, -1)[:, :li_cls_pred.shape[1]]
                sa_ins_preds.append(torch.cat(
                    [li_cls_batch_idx[..., None].float(), li_cls_pred.view(batch_size, -1, li_cls_pred.shape[-1])],
                    dim=-1))
            else:
                sa_ins_preds.append([])

        # 处理投票层输出
        if vote_outputs is not None:
            li_xyz, centers, centers_origin, ctr_offsets = vote_outputs
            ctr_batch_idx = batch_idx.view(batch_size, -1)[:, :li_xyz.shape[1]]
            ctr_batch_idx = ctr_batch_idx.contiguous().view(-1)

            batch_dict['ctr_offsets'] = torch.cat(
                (ctr_batch_idx[:, None].float(), ctr_offsets.contiguous().view(-1, 3)), dim=1)
            batch_dict['centers'] = torch.cat((ctr_batch_idx[:, None].float(), centers.contiguous().view(-1, 3)), dim=1)
            batch_dict['centers_origin'] = torch.cat(
                (ctr_batch_idx[:, None].float(), centers_origin.contiguous().view(-1, 3)), dim=1)
            batch_dict['ctr_batch_idx'] = ctr_batch_idx
        else:
            centers = encoder_xyz[-1]
            ctr_batch_idx = batch_idx.view(batch_size, -1)[:, :centers.shape[1]].contiguous().view(-1)
            batch_dict['centers'] = torch.cat((ctr_batch_idx[:, None].float(), centers.contiguous().view(-1, 3)), dim=1)
            batch_dict['centers_origin'] = batch_dict['centers']
            zeros = torch.zeros(ctr_batch_idx.shape[0], 3, device=ctr_batch_idx.device)
            batch_dict['ctr_offsets'] = torch.cat((ctr_batch_idx[:, None].float(), zeros), dim=1)
            batch_dict['ctr_batch_idx'] = ctr_batch_idx

        # 中心特征
        center_features = encoder_features[-1].permute(0, 2, 1).contiguous().view(-1, encoder_features[-1].shape[1])
        batch_dict['centers_features'] = center_features

        # 更新输出
        batch_dict['encoder_xyz'] = encoder_xyz
        batch_dict['encoder_coords'] = encoder_coords
        batch_dict['sa_ins_preds'] = sa_ins_preds
        batch_dict['encoder_features'] = encoder_features

        return batch_dict
