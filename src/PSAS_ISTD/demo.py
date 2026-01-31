# Basic module

# Torch and visulization
from torchvision      import transforms

# Metric, loss .etc
from model.utils import *
from model.loss import *
from model.load_param_data import load_param

# Model
from model.model_DNANet import  Res_CBAM_block
# from model.model_ACM    import  ACM
from model.model_DNANet import  *

from thop import profile
import time
import torch.nn.functional as F
os.environ["CUDA_VISIBLE_DEVICES"] = '0'
torch.cuda.device_count()

def parse_args():
    """Training Options for Segmentation Experiments"""
    parser = argparse.ArgumentParser(description='Dense_Nested_Attention_Network_For_SIRST')
    # choose model
    parser.add_argument('--model', type=str, default='DNANet_att_edge_od',
                        help='model name: DNANet,  ACM, DNANet_att_edge_od, DNANet_att_edge_od_mask, \
                        DNANet_att_edge, DNANet_att, DNANet_edge')

    # parameter for DNANet
    parser.add_argument('--channel_size', type=str, default='three',
                        help='one,  two,  three,  four')
    parser.add_argument('--backbone', type=str, default='resnet_18',
                        help='vgg10, resnet_10,  resnet_18,  resnet_34 ')
    parser.add_argument('--deep_supervision', type=str, default=False, help='True or False (model==DNANet), False(model==ACM)')

    # parameter for ACM
    parser.add_argument('--blocks', type=int, default=3, help='multiple block')
    parser.add_argument('--fuse_mode', type=str, default='AsymBi', help='fusion mode')

    # data and pre-process
    parser.add_argument('--img_demo_dir', type=str, default='/workspace/CogniScope/src/Infrared-Small-Target-Detection-master/NUDT_demo/DNANet_att_edge_od_demo',
                        help='img_demo')
    parser.add_argument('--img_demo_index', type=str,default='000139',
                        help='target1, target2, target3')
    parser.add_argument('--mode', type=str, default='TXT', help='mode name:  TXT, Ratio')
    parser.add_argument('--test_size', type=float, default='0.5', help='when --mode==Ratio')
    parser.add_argument('--suffix', type=str, default='.png')
    parser.add_argument('--workers', type=int, default=4,
                        metavar='N', help='dataloader threads')
    parser.add_argument('--in_channels', type=int, default=3,
                        help='in_channel=3 for pre-process')
    parser.add_argument('--base_size', type=int, default=256,
                        help='base image size')
    parser.add_argument('--crop_size', type=int, default=256,
                        help='crop image size')

    #  hyper params for training
    parser.add_argument('--test_batch_size', type=int, default=1,
                        metavar='N', help='input batch size for \
                        testing (default: 32)')

    # cuda and logging
    parser.add_argument('--gpus', type=str, default='0',
                        help='Training with GPUs, you can specify 1,3 for example.')

    args = parser.parse_args()

    # the parser
    return args

class Trainer(object):
    def __init__(self, args):

        # Initial
        self.args  = args
        self.grad = Get_gradient_nopadding()
        nb_filter, num_blocks = load_param(args.channel_size, args.backbone)
        img_dir   = args.img_demo_dir+'/'+args.img_demo_index+args.suffix

        # Preprocess and load data
        
        time1 = time.time()
        input_transform = transforms.Compose([
                          transforms.ToTensor(),
                          transforms.Normalize([.485, .456, .406], [.229, .224, .225])])
        data            = DemoLoader (img_dir, base_size=args.base_size, crop_size=args.crop_size, transform=input_transform,suffix=args.suffix)
        img             = data.img_preprocess()

        # Choose and load model (this paper is finished by one GPU)
        if args.model   == 'DNANet':
            model       = DNANet(num_classes=1,input_channels=args.in_channels, block=Res_CBAM_block, num_blocks=num_blocks, nb_filter=nb_filter, deep_supervision=args.deep_supervision)
        elif args.model == 'ACM':
            model       = ACM   (args.in_channels, layers=[args.blocks] * 3, fuse_mode=args.fuse_mode, tiny=False, classes=1)
        elif args.model   == 'DNANet_att_edge_od':
            model       = DNANet_att_edge_od(num_classes=1,input_channels=args.in_channels, block=Res_CBAM_block, num_blocks=num_blocks, nb_filter=nb_filter, deep_supervision=args.deep_supervision)
        elif args.model   == 'DNANet_att':
            model       = DNANet_att(num_classes=1,input_channels=args.in_channels, block=Res_CBAM_block, num_blocks=num_blocks, nb_filter=nb_filter, deep_supervision=args.deep_supervision)
        elif args.model   == 'DNANet_edge':
            model       = DNANet_edge(num_classes=1,input_channels=args.in_channels, block=Res_CBAM_block, num_blocks=num_blocks, nb_filter=nb_filter, deep_supervision=args.deep_supervision)
        elif args.model   == 'DNANet_att_edge':
            model       = DNANet_att_edge(num_classes=1,input_channels=args.in_channels, block=Res_CBAM_block, num_blocks=num_blocks, nb_filter=nb_filter, deep_supervision=args.deep_supervision)
        elif args.model   == 'DNANet_att_edge_mask':
            model       = DNANet_att_edge_mask(num_classes=1,input_channels=args.in_channels, block=Res_CBAM_block_mask, num_blocks=num_blocks, nb_filter=nb_filter, deep_supervision=args.deep_supervision)
        elif args.model   == 'DNANet_att_edge_od_mask':
            model       = DNANet_att_edge_od_mask(num_classes=1,input_channels=args.in_channels, block=Res_CBAM_block_mask, num_blocks=num_blocks, nb_filter=nb_filter, deep_supervision=args.deep_supervision)
        model           = model.cuda()
        model.apply(weights_init_xavier)
        print("Model Initializing")
        self.model      = model
        time2 = time.time()
        print('data_infer_time:', time2-time1)




        
        input = torch.randn(1, 3, 256, 256).cuda()
        input_grad = torch.randn(1, 3, 256, 256).cuda()
        flops, params = profile(model, (input, input_grad))
        print('flops: %.2f M, params: %.2f M' % (flops / 1e6, params / 1e6))
        
        # Load Checkpoint
        # NUDT
        # checkpoint      = torch.load('pretrain_DNANet_model.tar') #DNANET
        # checkpoint      = torch.load('result/NUDT-SIRST_DNANet_att_edge_od_nodeep/mIoU__DNANet_att_edge_od_NUDT-SIRST_epoch.pth.tar') #DNANet_att_edge_od
        # checkpoint      = torch.load('result/NUDT-SIRST_DNANet_att_edge_NOdeep/mIoU__DNANet_att_edge_NUDT-SIRST_epoch.pth.tar') #DNANet_att_edge
        checkpoint      = torch.load('/workspace/CogniScope/src/Infrared-Small-Target-Detection-master/result/NUDT-SIRST_DNANet_att_edge_od_mask_prune0.2_0.8864/mIoU__DNANet_att_edge_od_mask_NUDT-SIRST_epoch.pth.tar')
        # NUAA
        #DNANet_att_edge_od DNANet_att deep
        # checkpoint      = torch.load('result/NUAA-SIRST_DNANet_att_deep/mIoU__DNANet_att_NUAA-SIRST_epoch.pth.tar')
        #DNANET DNANet_att_edge deep
        # checkpoint      = torch.load('result/NUAA-SIRST_DNANet_att_edge_14_06_2023_16_56_38_wDS/mIoU__DNANet_att_edge_NUAA-SIRST_epoch.pth.tar')
        # checkpoint      = torch.load('result/NUAA-SIRST_DNANet_att_edge_mask_0.1_0.7767/mIoU__DNANet_att_edge_mask_NUAA-SIRST_epoch.pth.tar')
        # checkpoint      = torch.load('result/NUAA-SIRST_DNANet_att_edge_medianA_0.2_woDS/mIoU__DNANet_att_edge_NUAA-SIRST_epoch.pth.tar')
        
        # self.model.load_state_dict(checkpoint['state_dict']) # 

        self.model.load_state_dict(checkpoint['state_dict'], strict=False)

        # Test
        self.model.eval()
        img = img.cuda()
        img = torch.unsqueeze(img,0)

        time3 = time.time()
        if args.deep_supervision == True:
            edge_in = self.grad(img) #梯度输入图像 
            preds, edge_out = self.model(img, edge_in)
            pred  = preds[-1]
        else:
            if args.model in ['DNANet_att_edge_od', 'DNANet_att_edge', 'DNANet_att_edge', 'DNANet_att', 'DNANet_att_edge_od_mask', 'DNANet_att_edge_mask']:
                edge_in = self.grad(img)#梯度输入图像 
                pred, edge_out  = self.model(img, edge_in)
            else:
                pred  = self.model(img)
        time4 = time.time()
        print('model_infer_time:', time4-time3)
        time5 = time.time()
        save_Pred_GT_visulize(pred, args.img_demo_dir, args.img_demo_index, args.suffix)
        time6 = time.time()
        print('result_save_time:', time6-time5)


class Get_gradient_nopadding(nn.Module):
    def __init__(self):
        super(Get_gradient_nopadding, self).__init__()
        kernel_v = [[0, -1, 0],
                    [0, 0, 0],
                    [0, 1, 0]]
        kernel_h = [[0, 0, 0],
                    [-1, 0, 1],
                    [0, 0, 0]]
        kernel_h = torch.FloatTensor(kernel_h).unsqueeze(0).unsqueeze(0)
        kernel_v = torch.FloatTensor(kernel_v).unsqueeze(0).unsqueeze(0)
        self.weight_h = nn.Parameter(data = kernel_h, requires_grad = False).cuda()
        self.weight_v = nn.Parameter(data = kernel_v, requires_grad = False).cuda()

    def forward(self, x):
        x0 = x[:, 0]
        x1 = x[:, 1]
        x2 = x[:, 2]
        x0_v = F.conv2d(x0.unsqueeze(1), self.weight_v, padding = 1)
        x0_h = F.conv2d(x0.unsqueeze(1), self.weight_h, padding = 1)

        x1_v = F.conv2d(x1.unsqueeze(1), self.weight_v, padding = 1)
        x1_h = F.conv2d(x1.unsqueeze(1), self.weight_h, padding = 1)

        x2_v = F.conv2d(x2.unsqueeze(1), self.weight_v, padding = 1)
        x2_h = F.conv2d(x2.unsqueeze(1), self.weight_h, padding = 1)

        x0 = torch.sqrt(torch.pow(x0_v, 2) + torch.pow(x0_h, 2) + 1e-6)
        x1 = torch.sqrt(torch.pow(x1_v, 2) + torch.pow(x1_h, 2) + 1e-6)
        x2 = torch.sqrt(torch.pow(x2_v, 2) + torch.pow(x2_h, 2) + 1e-6)

        x = torch.cat([x0, x1, x2], dim=1)
        return x

def main(args):
    trainer = Trainer(args)

if __name__ == "__main__":
    for i in ['000139']:
    # for i in ['000007', '000019', '000022', '000041', '000059', '000139', '000246', '000247']:
    # for i in ['Misc_1', 'Misc_3', 'Misc_7', 'Misc_15', 'Misc_29', 'Misc_121']:
        args = parse_args()
        args.img_demo_index = i
        main(args)





