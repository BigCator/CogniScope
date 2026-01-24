import os
import torch
import torch.nn as nn

from ...ops.pointnet2.pointnet2_batch import pointnet2_modules


######################################## TransNeXt Convolutional GLU start ########################################
class ConvolutionalGLU(nn.Module):
    """
    卷积版GLU，用于在特征通道维度上执行门控增强。
    参考用户提供的实现，保持接口一致。
    """

    def __init__(self, in_features, hidden_features=None, out_features=None, act_layer=nn.GELU, drop=0.0) -> None:
        super().__init__()

        out_features = out_features or in_features
        hidden_features = hidden_features or in_features
        hidden_features = int(2 * hidden_features / 3)

        self.fc1 = nn.Conv2d(in_features, hidden_features * 2, 1)
        self.dwconv = nn.Sequential(
            nn.Conv2d(
                hidden_features,
                hidden_features,
                kernel_size=3,
                stride=1,
                padding=1,
                bias=True,
                groups=hidden_features,
            ),
            act_layer(),
        )
        self.fc2 = nn.Conv2d(hidden_features, out_features, 1)
        self.drop = nn.Dropout(drop)

    def forward(self, x):
        # x: (B, C, H, W)
        x_shortcut = x
        x, v = self.fc1(x).chunk(2, dim=1)
        x = self.dwconv(x) * v
        x = self.drop(x)
        x = self.fc2(x)
        x = self.drop(x)
        return x_shortcut + x


######################################## TransNeXt Convolutional GLU ########################################


class TransNeXt_Backbone(nn.Module):
    """
    基于IA-SSD骨干，加入ConvolutionalGLU门控增强以提升特征提取能力。
    结构基本复用PointNet++多尺度采样流程，按配置在指定层后应用GLU。
    """

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
        self.aggregation_mlps = sa_config.get("AGGREGATION_MLPS", None)
        self.confidence_mlps = sa_config.get("CONFIDENCE_MLPS", None)
        self.max_translate_range = sa_config.get("MAX_TRANSLATE_RANGE", None)

        self.save_features_dir = model_cfg.get("SAVE_FEAT_DIR", None)
        self.use_pooling_weight = model_cfg.get("USE_POOLING_WEIGHT", False)

        # GLU配置
        self.use_glu = model_cfg.get("USE_GLU", False)
        self.glu_layer_index = model_cfg.get("GLU_LAYER_INDEX", [])
        self.glu_hidden_ratio = model_cfg.get("GLU_HIDDEN_RATIO", 1.0)
        self.glu_drop = model_cfg.get("GLU_DROP", 0.0)
        self.glu_modules = nn.ModuleList()

        for k in range(sa_config.NSAMPLE_LIST.__len__()):
            if isinstance(self.layer_inputs[k], list):
                channel_in = channel_out_list[self.layer_inputs[k][-1]]
            else:
                channel_in = channel_out_list[self.layer_inputs[k]]

            if self.layer_types[k] == "SA_Layer":
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
                        num_class=self.num_class,
                        use_pooling_weights=self.use_pooling_weight,
                    )
                )

            elif self.layer_types[k] == "Vote_Layer":
                self.SA_modules.append(
                    pointnet2_modules.Vote_layer(
                        mlp_list=sa_config.MLPS[k],
                        pre_channel=channel_out_list[self.layer_inputs[k]],
                        max_translate_range=self.max_translate_range,
                    )
                )
            elif self.layer_types[k] == "PCT_Layer":
                mlps = self.model_cfg.SA_CONFIG.MLPS[k].copy()
                try:
                    for idx in range(mlps.__len__()):
                        mlps[idx] = [channel_in] + mlps[idx]
                except Exception:
                    pass
                self.SA_modules.append(
                    pointnet2_modules.AttentiveSAModule(
                        npoint_list=self.model_cfg.SA_CONFIG.NPOINT_LIST[k],
                        radii=self.model_cfg.SA_CONFIG.RADIUS_LIST[k],
                        nsamples=self.model_cfg.SA_CONFIG.NSAMPLE_LIST[k],
                        mlps=mlps,
                        use_xyz=True,
                        out_channel=self.model_cfg.SA_CONFIG.AGGREGATION_MLPS[k][0],
                    )
                )

                channel_out = self.model_cfg.SA_CONFIG.AGGREGATION_MLPS[k][0]
            channel_out_list.append(channel_out)

            # 为当前层创建GLU模块（如果需要）
            if self.use_glu and k in self.glu_layer_index:
                hidden_features = max(1, int(channel_out * self.glu_hidden_ratio))
                self.glu_modules.append(
                    ConvolutionalGLU(
                        in_features=channel_out,
                        hidden_features=hidden_features,
                        out_features=channel_out,
                        act_layer=nn.GELU,
                        drop=self.glu_drop,
                    )
                )
            else:
                # 占位保持索引一致
                self.glu_modules.append(None)

        self.num_point_features = channel_out

    def break_up_pc(self, pc):
        batch_idx = pc[:, 0]
        xyz = pc[:, 1:4].contiguous()
        features = pc[:, 4:].contiguous() if pc.size(-1) > 4 else None
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
        batch_size = batch_dict["batch_size"]
        points = batch_dict["points"]
        batch_idx, xyz, features = self.break_up_pc(points)

        xyz_batch_cnt = xyz.new_zeros(batch_size).int()
        for bs_idx in range(batch_size):
            xyz_batch_cnt[bs_idx] = (batch_idx == bs_idx).sum()

        assert xyz_batch_cnt.min() == xyz_batch_cnt.max()
        xyz = xyz.view(batch_size, -1, 3)
        features = (
            features.view(batch_size, -1, features.shape[-1]).permute(0, 2, 1).contiguous()
            if features is not None
            else None
        )

        encoder_xyz, encoder_features, sa_ins_preds = [xyz], [features], []
        encoder_coords = [torch.cat([batch_idx.view(batch_size, -1, 1), xyz], dim=-1)]

        li_cls_pred = None
        for i in range(len(self.SA_modules)):
            xyz_input = encoder_xyz[self.layer_inputs[i]]
            feature_input = encoder_features[self.layer_inputs[i]]

            if self.layer_types[i] == "SA_Layer":
                ctr_xyz = encoder_xyz[self.ctr_idx_list[i]] if self.ctr_idx_list[i] != -1 else None
                if self.training:
                    save_path = None
                elif self.save_features_dir is None:
                    save_path = None
                else:
                    from pathlib import Path

                    layer_name = "Layer_" + str(i)
                    save_path = Path(self.save_features_dir) / layer_name
                    save_path = str(save_path)
                    if not os.path.exists(save_path):
                        os.mkdir(save_path)

                li_xyz, li_features, li_cls_pred = self.SA_modules[i](
                    xyz_input,
                    feature_input,
                    li_cls_pred,
                    ctr_xyz=ctr_xyz,
                    save_features_dir=save_path,
                    frame_id=batch_dict["frame_id"][0],
                )

            elif self.layer_types[i] == "Vote_Layer":
                li_xyz, li_features, xyz_select, ctr_offsets = self.SA_modules[i](xyz_input, feature_input)
                centers = li_xyz
                centers_origin = xyz_select
                center_origin_batch_idx = batch_idx.view(batch_size, -1)[:, : centers_origin.shape[1]]
                encoder_coords.append(
                    torch.cat(
                        [center_origin_batch_idx[..., None].float(), centers_origin.view(batch_size, -1, 3)], dim=-1
                    )
                )
            elif self.layer_types[i] == "PCT_Layer":
                ctr_xyz = encoder_xyz[self.ctr_idx_list[i]] if self.ctr_idx_list[i] != -1 else None
                li_xyz, li_features = self.SA_modules[i](xyz_input, feature_input, ctr_xyz)
                li_cls_pred = None

            # 应用GLU模块（如果需要）并保持连续性
            if self.use_glu and i in self.glu_layer_index:
                B, C, N = li_features.shape
                glu_input = li_features.view(B, C, N, 1).contiguous()
                glu_output = self.glu_modules[i](glu_input)
                li_features = glu_output.squeeze(-1).contiguous()

            if torch.isnan(li_xyz).sum() > 0:
                raise RuntimeError("Nan in li_xyz!")
            encoder_xyz.append(li_xyz)
            li_batch_idx = batch_idx.view(batch_size, -1)[:, : li_xyz.shape[1]]
            encoder_coords.append(torch.cat([li_batch_idx[..., None].float(), li_xyz.view(batch_size, -1, 3)], dim=-1))
            encoder_features.append(li_features)
            if li_cls_pred is not None:
                li_cls_batch_idx = batch_idx.view(batch_size, -1)[:, : li_cls_pred.shape[1]]
                sa_ins_preds.append(
                    torch.cat(
                        [li_cls_batch_idx[..., None].float(), li_cls_pred.view(batch_size, -1, li_cls_pred.shape[-1])],
                        dim=-1,
                    )
                )
            else:
                sa_ins_preds.append([])

        ctr_batch_idx = batch_idx.view(batch_size, -1)[:, : li_xyz.shape[1]]
        ctr_batch_idx = ctr_batch_idx.contiguous().view(-1)
        batch_dict["ctr_offsets"] = torch.cat((ctr_batch_idx[:, None].float(), ctr_offsets.contiguous().view(-1, 3)), dim=1)
        batch_dict["centers"] = torch.cat((ctr_batch_idx[:, None].float(), centers.contiguous().view(-1, 3)), dim=1)
        batch_dict["centers_origin"] = torch.cat(
            (ctr_batch_idx[:, None].float(), centers_origin.contiguous().view(-1, 3)), dim=1
        )
        batch_dict["ctr_batch_idx"] = ctr_batch_idx

        center_features = encoder_features[-1].permute(0, 2, 1).contiguous().view(-1, encoder_features[-1].shape[1])
        batch_dict["centers_features"] = center_features

        if torch.isnan(centers).sum() > 0:
            raise RuntimeError("Nan in centers!")

        batch_dict["encoder_xyz"] = encoder_xyz
        batch_dict["encoder_coords"] = encoder_coords
        batch_dict["sa_ins_preds"] = sa_ins_preds
        batch_dict["encoder_features"] = encoder_features

        return batch_dict
