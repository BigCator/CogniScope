import pathlib
import torch
import torch.nn as nn
from ...ops.pointnet2.pointnet2_batch import pointnet2_modules
import os


########## CAA模块实现（完全按照您提供的代码）##########
def autopad(k, p=None, d=1):  # kernel, padding, dilation
    """Pad to 'same' shape outputs."""
    if d > 1:
        k = d * (k - 1) + 1 if isinstance(k, int) else [d * (x - 1) + 1 for x in k]  # actual kernel-size
    if p is None:
        p = k // 2 if isinstance(k, int) else [x // 2 for x in k]  # auto-pad
    return p


class Conv(nn.Module):
    """Standard convolution with args(ch_in, ch_out, kernel, stride, padding, groups, dilation, activation)."""

    default_act = nn.SiLU()  # default activation

    def __init__(self, c1, c2, k=1, s=1, p=None, g=1, d=1, act=True):
        """Initialize Conv layer with given arguments including activation."""
        super().__init__()
        self.conv = nn.Conv2d(c1, c2, k, s, autopad(k, p, d), groups=g, dilation=d, bias=False)
        self.bn = nn.BatchNorm2d(c2)
        self.act = self.default_act if act is True else act if isinstance(act, nn.Module) else nn.Identity()

    def forward(self, x):
        """Apply convolution, batch normalization and activation to input tensor."""
        return self.act(self.bn(self.conv(x)))

    def forward_fuse(self, x):
        """Perform transposed convolution of 2D data."""
        return self.act(self.conv(x))


class CAA(nn.Module):
    def __init__(self, ch, h_kernel_size=11, v_kernel_size=11) -> None:
        super().__init__()
        self.avg_pool = nn.AvgPool2d(7, 1, 3)
        self.conv1 = Conv(ch, ch)
        self.h_conv = nn.Conv2d(ch, ch, (1, h_kernel_size), 1, (0, h_kernel_size // 2), 1, ch)
        self.v_conv = nn.Conv2d(ch, ch, (v_kernel_size, 1), 1, (v_kernel_size // 2, 0), 1, ch)
        self.conv2 = Conv(ch, ch)
        self.act = nn.Sigmoid()

    def forward(self, x):
        attn_factor = self.act(self.conv2(self.v_conv(self.h_conv(self.conv1(self.avg_pool(x))))))
        return attn_factor * x


##########################################################

class CAA_Backbone(nn.Module):
    """ Backbone for IA-SSD with CAA Attention"""

    def __init__(self, model_cfg, input_channels, **kwargs):
        super().__init__()
        self.model_cfg = model_cfg
        self.num_class = model_cfg.num_class

        # 添加CAA配置选项
        self.use_caa = model_cfg.get('USE_CAA', True)
        self.caa_layers = model_cfg.get('CAA_LAYERS', [1, 2])  # 默认在第1、2层使用
        self.caa_h_kernel = model_cfg.get('CAA_H_KERNEL', 11)  # 水平卷积核大小
        self.caa_v_kernel = model_cfg.get('CAA_V_KERNEL', 11)  # 垂直卷积核大小

        self.SA_modules = nn.ModuleList()
        self.caa_modules = nn.ModuleList()  # 存储CAA模块
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
        self.save_features_dir = model_cfg.get('SAVE_FEAT_DIR', None)
        self.use_pooling_weight = model_cfg.get('USE_POOLING_WEIGHT', False)

        for k in range(sa_config.NSAMPLE_LIST.__len__()):
            if isinstance(self.layer_inputs[k], list):
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

                # 创建CAA模块（如果需要）
                if self.use_caa and k in self.caa_layers:
                    caa_module = CAA(channel_out,
                                     h_kernel_size=self.caa_h_kernel,
                                     v_kernel_size=self.caa_v_kernel)
                else:
                    caa_module = None

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
                self.caa_modules.append(caa_module)

            elif self.layer_types[k] == 'Vote_Layer':
                self.SA_modules.append(pointnet2_modules.Vote_layer(
                    mlp_list=sa_config.MLPS[k],
                    pre_channel=channel_out_list[self.layer_inputs[k]],
                    max_translate_range=self.max_translate_range
                ))
                self.caa_modules.append(None)

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
                self.caa_modules.append(None)
                channel_out = self.model_cfg.SA_CONFIG.AGGREGATION_MLPS[k][0]

            channel_out_list.append(channel_out)

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

        xyz_batch_cnt = xyz.new_zeros(batch_size).int()
        for bs_idx in range(batch_size):
            xyz_batch_cnt[bs_idx] = (batch_idx == bs_idx).sum()

        assert xyz_batch_cnt.min() == xyz_batch_cnt.max()
        xyz = xyz.view(batch_size, -1, 3)
        features = features.view(batch_size, -1, features.shape[-1]).permute(0, 2,
                                                                             1).contiguous() if features is not None else None

        encoder_xyz, encoder_features, sa_ins_preds = [xyz], [features], []
        encoder_coords = [torch.cat([batch_idx.view(batch_size, -1, 1), xyz], dim=-1)]

        li_cls_pred = None
        for i in range(len(self.SA_modules)):
            xyz_input = encoder_xyz[self.layer_inputs[i]]
            feature_input = encoder_features[self.layer_inputs[i]]

            if self.layer_types[i] == 'SA_Layer':
                ctr_xyz = encoder_xyz[self.ctr_idx_list[i]] if self.ctr_idx_list[i] != -1 else None
                save_path = None
                if not self.training and self.save_features_dir:
                    from pathlib import Path
                    layer_name = 'Layer_' + str(i)
                    save_path = Path(self.save_features_dir) / layer_name
                    save_path = str(save_path)
                    if not os.path.exists(save_path):
                        os.mkdir(save_path)

                # 执行SA层前向传播
                li_xyz, li_features, li_cls_pred = self.SA_modules[i](
                    xyz_input, feature_input, li_cls_pred, ctr_xyz=ctr_xyz,
                    save_features_dir=save_path, frame_id=batch_dict['frame_id'][0]
                )

                # 在指定层应用CAA注意力
                if self.use_caa and i in self.caa_layers and self.caa_modules[i] is not None:
                    # 将点特征从(B, C, npoint)转换为4D: (B, C, npoint, 1)
                    li_features_4d = li_features.unsqueeze(-1)

                    # 应用CAA注意力（完全按照原始实现）
                    li_features_4d = self.caa_modules[i](li_features_4d)

                    # 恢复点特征维度: (B, C, npoint, 1) -> (B, C, npoint)
                    li_features = li_features_4d.squeeze(-1)

            elif self.layer_types[i] == 'Vote_Layer':
                li_xyz, li_features, xyz_select, ctr_offsets = self.SA_modules[i](xyz_input, feature_input)
                centers = li_xyz
                centers_origin = xyz_select
                center_origin_batch_idx = batch_idx.view(batch_size, -1)[:, :centers_origin.shape[1]]
                encoder_coords.append(
                    torch.cat([center_origin_batch_idx[..., None].float(), centers_origin.view(batch_size, -1, 3)],
                              dim=-1))
                li_cls_pred = None

            elif self.layer_types[i] == 'PCT_Layer':
                ctr_xyz = encoder_xyz[self.ctr_idx_list[i]] if self.ctr_idx_list[i] != -1 else None
                li_xyz, li_features = self.SA_modules[i](xyz_input, feature_input, ctr_xyz)
                li_cls_pred = None

            if torch.isnan(li_xyz).sum() > 0:
                raise RuntimeError('Nan in li_xyz!')

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

        # 检查Vote_Layer是否存在后再处理相关变量
        vote_layer_index = None
        for i, layer_type in enumerate(self.layer_types):
            if layer_type == 'Vote_Layer':
                vote_layer_index = i + 1
                break

        if vote_layer_index is not None and vote_layer_index < len(encoder_xyz):
            li_xyz = encoder_xyz[vote_layer_index]
            ctr_batch_idx = batch_idx.view(batch_size, -1)[:, :li_xyz.shape[1]]
            ctr_batch_idx = ctr_batch_idx.contiguous().view(-1)

            # 确保变量已定义
            if 'ctr_offsets' in locals() and 'centers' in locals() and 'centers_origin' in locals():
                batch_dict['ctr_offsets'] = torch.cat(
                    (ctr_batch_idx[:, None].float(), ctr_offsets.contiguous().view(-1, 3)), dim=1)
                batch_dict['centers'] = torch.cat((ctr_batch_idx[:, None].float(), centers.contiguous().view(-1, 3)),
                                                  dim=1)
                batch_dict['centers_origin'] = torch.cat(
                    (ctr_batch_idx[:, None].float(), centers_origin.contiguous().view(-1, 3)), dim=1)
                batch_dict['ctr_batch_idx'] = ctr_batch_idx

        # 中心特征提取
        if len(encoder_features) > 0:
            center_features = encoder_features[-1].permute(0, 2, 1).contiguous().view(-1, encoder_features[-1].shape[1])
            batch_dict['centers_features'] = center_features

        batch_dict['encoder_xyz'] = encoder_xyz
        batch_dict['encoder_coords'] = encoder_coords
        batch_dict['sa_ins_preds'] = sa_ins_preds
        batch_dict['encoder_features'] = encoder_features

        return batch_dict