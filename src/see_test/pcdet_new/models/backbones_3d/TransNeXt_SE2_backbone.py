import os
import torch
import torch.nn as nn

from ...ops.pointnet2.pointnet2_batch import pointnet2_modules


######################################## TransNeXt Convolutional GLU start ########################################
class ConvolutionalGLU(nn.Module):
    """
    卷积版GLU，用于在特征通道维度上执行门控增强。
    与 TransNeXt_backbone.py 保持一致。
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


######################################## SE channel attention ########################################
class SELayer(nn.Module):
    """通道注意力模块（Squeeze-and-Excitation），与 SE2_backbone.py 一致"""

    def __init__(self, channel, reduction=16):
        super().__init__()
        self.avg_pool = nn.AdaptiveAvgPool2d(1)
        self.fc = nn.Sequential(
            nn.Linear(channel, channel // reduction, bias=False),
            nn.ReLU(inplace=True),
            nn.Linear(channel // reduction, channel, bias=False),
            nn.Sigmoid(),
        )

    def forward(self, x):
        # x: (B, C, H, W)
        b, c, h, w = x.size()
        y = self.avg_pool(x).view(b, c)
        y = self.fc(y).view(b, c, 1, 1)
        return x * y.expand_as(x)


class TransNeXt_SE2_Backbone(nn.Module):
    """
    TransNeXt + SE 融合骨干网：
    - 主体结构复用 IA-SSD PointNet++ SA/Vote/PCT 流程
    - 可在指定层插入 ConvolutionalGLU（TransNeXt）
    - 可在指定层插入 SELayer（SE2）
    - 插入顺序可配置：默认 GLU_THEN_SE
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

        # GLU配置（来自 TransNeXt_backbone.py）
        self.use_glu = model_cfg.get("USE_GLU", False)
        self.glu_layer_index = model_cfg.get("GLU_LAYER_INDEX", [])
        self.glu_hidden_ratio = model_cfg.get("GLU_HIDDEN_RATIO", 1.0)
        self.glu_drop = model_cfg.get("GLU_DROP", 0.0)
        self.glu_modules = nn.ModuleList()

        # SE配置（来自 SE2_backbone.py）
        self.use_se = model_cfg.get("USE_SE", False)
        self.se_layer_index = model_cfg.get("SE_LAYER_INDEX", [])
        self.se_reduction = model_cfg.get("SE_REDUCTION", 16)
        self.se_modules = nn.ModuleList()

        # 融合顺序：GLU_THEN_SE 或 SE_THEN_GLU
        self.fusion_order = model_cfg.get("FUSION_ORDER", "GLU_THEN_SE")
        assert self.fusion_order in ["GLU_THEN_SE", "SE_THEN_GLU"]

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
                # Vote layer 的输出通道沿用 pre_channel（与原实现一致）
                channel_out = channel_out_list[self.layer_inputs[k]]

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

            else:
                raise ValueError(f"Unknown layer type: {self.layer_types[k]}")

            channel_out_list.append(channel_out)

            # 为当前层创建 GLU / SE 模块（若未启用则 None 占位，保持索引对齐）
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
                self.glu_modules.append(None)

            if self.use_se and k in self.se_layer_index:
                self.se_modules.append(SELayer(channel_out, reduction=self.se_reduction))
            else:
                self.se_modules.append(None)

        self.num_point_features = channel_out

    def break_up_pc(self, pc):
        batch_idx = pc[:, 0]
        xyz = pc[:, 1:4].contiguous()
        features = pc[:, 4:].contiguous() if pc.size(-1) > 4 else None
        return batch_idx, xyz, features

    def _apply_glu(self, i: int, li_features: torch.Tensor) -> torch.Tensor:
        if not (self.use_glu and i in self.glu_layer_index):
            return li_features
        if self.glu_modules[i] is None:
            return li_features
        B, C, N = li_features.shape
        x = li_features.view(B, C, N, 1).contiguous()
        x = self.glu_modules[i](x)
        return x.squeeze(-1).contiguous()

    def _apply_se(self, i: int, li_features: torch.Tensor) -> torch.Tensor:
        if not (self.use_se and i in self.se_layer_index):
            return li_features
        if self.se_modules[i] is None:
            return li_features
        B, C, N = li_features.shape
        x = li_features.view(B, C, N, 1).contiguous()
        x = self.se_modules[i](x)
        return x.squeeze(-1).contiguous()

    def forward(self, batch_dict):
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

            # 融合：在指定层对 li_features 串接 GLU/SE
            if self.fusion_order == "GLU_THEN_SE":
                li_features = self._apply_glu(i, li_features)
                li_features = self._apply_se(i, li_features)
            else:
                li_features = self._apply_se(i, li_features)
                li_features = self._apply_glu(i, li_features)

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
        batch_dict["centers_origin"] = torch.cat((ctr_batch_idx[:, None].float(), centers_origin.contiguous().view(-1, 3)), dim=1)
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


