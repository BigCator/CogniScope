import pathlib
import torch
import torch.nn as nn
from ...ops.pointnet2.pointnet2_batch import pointnet2_modules
import os

# 添加 PnP-3D 导入
try:
    from ...ops.pnp3d import pnp3d
except ImportError:
    from pcdet.ops.pnp3d import pnp3d


class PNP_Backbone(nn.Module):
    def __init__(self, model_cfg, input_channels, **kwargs):
        super().__init__()
        self.model_cfg = model_cfg
        self.num_class = model_cfg.num_class

        # 添加 PnP-3D 配置
        self.use_pnp3d = model_cfg.get('USE_PNP3D', False)
        self.pnp3d_modules = nn.ModuleList()

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
                    channel_out = aggregation_mlp[-1] if aggregation_mlp else channel_out
                else:
                    aggregation_mlp = None

                if self.confidence_mlps and self.confidence_mlps[k]:
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

                # 为每个 SA_Layer 添加 PnP-3D 实例
                if self.use_pnp3d:
                    self.pnp3d_modules.append(
                        pnp3d.PnP3D(input_features_dim=channel_out)
                    )
                else:
                    self.pnp3d_modules.append(nn.Identity())

            elif self.layer_types[k] == 'Vote_Layer':
                self.SA_modules.append(
                    pointnet2_modules.Vote_layer(
                        mlp_list=sa_config.MLPS[k],
                        pre_channel=channel_out_list[self.layer_inputs[k]],
                        max_translate_range=self.max_translate_range
                    )
                )
                # Vote_Layer 不使用 PnP-3D
                self.pnp3d_modules.append(nn.Identity())

            elif self.layer_types[k] == 'PCT_Layer':
                mlps = sa_config.MLPS[k].copy()
                try:
                    for idx in range(mlps.__len__()):
                        mlps[idx] = [channel_in] + mlps[idx]
                except:
                    pass
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
                # PCT_Layer 不使用 PnP-3D
                self.pnp3d_modules.append(nn.Identity())
                channel_out = sa_config.AGGREGATION_MLPS[k][0]

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
                if self.training or self.save_features_dir is None:
                    save_path = None
                else:
                    layer_name = f'Layer_{i}'
                    save_path = os.path.join(self.save_features_dir, layer_name)
                    os.makedirs(save_path, exist_ok=True)

                li_xyz, li_features, li_cls_pred = self.SA_modules[i](
                    xyz_input, feature_input, li_cls_pred,
                    ctr_xyz=ctr_xyz, save_features_dir=save_path,
                    frame_id=batch_dict['frame_id'][0]
                )

                # === 应用 PnP-3D 模块 ===
                if self.use_pnp3d:
                    # 调整坐标格式: (B, N, 3) -> (B, 3, N)
                    xyz_for_pnp = li_xyz.permute(0, 2, 1).contiguous()

                    # 应用 PnP-3D 处理特征
                    li_features = self.pnp3d_modules[i](
                        xyz_for_pnp,
                        li_features,
                        k=10  # 邻居数，与论文一致
                    )
                # === 结束 PnP-3D 处理 ===

            elif self.layer_types[i] == 'Vote_Layer':
                li_xyz, li_features, xyz_select, ctr_offsets = self.SA_modules[i](xyz_input, feature_input)
                centers = li_xyz
                centers_origin = xyz_select
                center_origin_batch_idx = batch_idx.view(batch_size, -1)[:, :centers_origin.shape[1]]
                encoder_coords.append(
                    torch.cat([center_origin_batch_idx[..., None].float(),
                               centers_origin.view(batch_size, -1, 3)], dim=-1)
                )

            elif self.layer_types[i] == 'PCT_Layer':
                ctr_xyz = encoder_xyz[self.ctr_idx_list[i]] if self.ctr_idx_list[i] != -1 else None
                li_xyz, li_features = self.SA_modules[i](xyz_input, feature_input, ctr_xyz)
                li_cls_pred = None

            # 检查 NaN 值
            if torch.isnan(li_xyz).sum() > 0:
                raise RuntimeError('NaN in li_xyz!')

            encoder_xyz.append(li_xyz)
            li_batch_idx = batch_idx.view(batch_size, -1)[:, :li_xyz.shape[1]]
            encoder_coords.append(torch.cat([li_batch_idx[..., None].float(), li_xyz.view(batch_size, -1, 3)], dim=-1))
            encoder_features.append(li_features)
            if li_cls_pred is not None:
                li_cls_batch_idx = batch_idx.view(batch_size, -1)[:, :li_cls_pred.shape[1]]
                sa_ins_preds.append(torch.cat(
                    [li_cls_batch_idx[..., None].float(), li_cls_pred.view(batch_size, -1, li_cls_pred.shape[-1])],
                    dim=-1))
                pass
            else:
                sa_ins_preds.append([])

        ctr_batch_idx = batch_idx.view(batch_size, -1)[:, :li_xyz.shape[1]]
        ctr_batch_idx = ctr_batch_idx.contiguous().view(-1)
        batch_dict['ctr_offsets'] = torch.cat((ctr_batch_idx[:, None].float(), ctr_offsets.contiguous().view(-1, 3)),
                                              dim=1)
        batch_dict['centers'] = torch.cat((ctr_batch_idx[:, None].float(), centers.contiguous().view(-1, 3)), dim=1)
        batch_dict['centers_origin'] = torch.cat(
            (ctr_batch_idx[:, None].float(), centers_origin.contiguous().view(-1, 3)), dim=1)
        batch_dict['ctr_batch_idx'] = ctr_batch_idx

        center_features = encoder_features[-1].permute(0, 2, 1).contiguous().view(-1, encoder_features[-1].shape[
            1])  # shape?
        batch_dict['centers_features'] = center_features

        # check encoder xyzs
        if torch.isnan(centers).sum() > 0:
            raise RuntimeError('Nan in centers!')

        batch_dict['encoder_xyz'] = encoder_xyz
        batch_dict['encoder_coords'] = encoder_coords
        batch_dict['sa_ins_preds'] = sa_ins_preds
        batch_dict['encoder_features'] = encoder_features  # not used later?

        return batch_dict
