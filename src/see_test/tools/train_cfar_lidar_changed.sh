CUDA_VISIBLE_DEVICES=1 \
python3 tools/train.py \
--cfg_file ./tools/cfgs/kitti_models/cfar-lidar-changed-epoch20.yaml \
--pretrained_model ./ckpts/cfar/cfar-lidar-rcs.pth \
--batch_size 28 \
--epochs 20 \
--workers 8