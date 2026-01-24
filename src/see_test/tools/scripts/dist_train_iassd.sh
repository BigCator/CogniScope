# 4卡训练命令
python -m torch.distributed.launch --nproc_per_node=4 train.py \
    --cfg_file /home/dell/xzx_ws/see_test/tools/cfgs/kitti_models/test-vod-lidar.yaml \
    --batch_size 24 \
    --epochs 80 \
    --workers 8 \
    --launcher pytorch \
    --fix_random_seed \
    --sync_bn \
