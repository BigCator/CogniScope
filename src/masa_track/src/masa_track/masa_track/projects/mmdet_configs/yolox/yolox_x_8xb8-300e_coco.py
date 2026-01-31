_base_ = './yolox_s_8xb8-300e_coco.py'
# 当前配置将包含yolox_s_8xb8-300e_coco.py中的所有设置，除非在当前文件中被重新定义。
# model settings
model = dict(
    backbone=dict(deepen_factor=1.33, widen_factor=1.25),
    neck=dict(
        in_channels=[320, 640, 1280], out_channels=320, num_csp_blocks=4),
    bbox_head=dict(in_channels=320, feat_channels=320))
