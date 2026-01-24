python3 tools/eval_single_epoch.py \
--cfg_file /seeing_beyond/tools/cfgs/kitti_models/cfar-lidar.yaml \
--ckpt /seeing_beyond/ckpts/cfar-lidar.pt \
--pretrained_model /seeing_beyond/ckpts/cfar/cfar-lidar-rcs.pth \


CUDA_VISIBLE_DEVICES=2 \
python3 tools/eval_single_epoch.py \
--cfg_file tools/cfgs/kitti_models/cfar-lidar-changed-epoch20.yaml \
--ckpt output/cfar-lidar-changed-epoch20/debug_new/eval/eval_with_train/best_eval/best_epoch_checkpoint.pth \
--pretrained_model ./ckpts/cfar/cfar-lidar-rcs.pth \
