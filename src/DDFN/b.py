#--------------------------------------evcblock------------------------------------------

import torch
import torch.nn as nn
from torch.nn import functional as F
from functools import partial

from timm.models.layers import DropPath, trunc_normal_
from timm.models.registry import register_model
from timm.models.layers.helpers import to_2tuple
from timm.data import IMAGENET_DEFAULT_MEAN, IMAGENET_DEFAULT_STD

#  1*1 3*3 1*1
class ConvBlock(nn.Module):
    def __init__(self, in_channels, out_channels, stride=1, res_conv=False, act_layer=nn.ReLU, groups=1,
                 norm_layer=partial(nn.BatchNorm2d, eps=1e-6), drop_block=None, drop_path=None):
        super(ConvBlock, self).__init__()
        self.in_channels = in_channels
        expansion = 4
        c = out_channels // expansion

        self.conv1 = nn.Conv2d(in_channels, c, kernel_size=1, stride=1, padding=0, bias=False)  # [64, 256, 1, 1]
        self.bn1 = norm_layer(c)
        self.act1 = act_layer(inplace=True)

        self.conv2 = nn.Conv2d(c, c, kernel_size=3, stride=stride, groups=groups, padding=1, bias=False)
        self.bn2 = norm_layer(c)
        self.act2 = act_layer(inplace=True)

        self.conv3 = nn.Conv2d(c, out_channels, kernel_size=1, stride=1, padding=0, bias=False)
        self.bn3 = norm_layer(out_channels)
        self.act3 = act_layer(inplace=True)

        if res_conv:
            self.residual_conv = nn.Conv2d(in_channels, out_channels, kernel_size=1, stride=1, padding=0, bias=False)
            self.residual_bn = norm_layer(out_channels)

        self.res_conv = res_conv
        self.drop_block = drop_block
        self.drop_path = drop_path

    def zero_init_last_bn(self):
        nn.init.zeros_(self.bn3.weight)

    def forward(self, x, return_x_2=True):
        residual = x

        x = self.conv1(x)
        x = self.bn1(x)
        if self.drop_block is not None:
            x = self.drop_block(x)
        x = self.act1(x)

        x = self.conv2(x) #if x_t_r is None else self.conv2(x + x_t_r)
        x = self.bn2(x)
        if self.drop_block is not None:
            x = self.drop_block(x)
        x2 = self.act2(x)

        x = self.conv3(x2)
        x = self.bn3(x)
        if self.drop_block is not None:
            x = self.drop_block(x)

        if self.drop_path is not None:
            x = self.drop_path(x)

        if self.res_conv:
            residual = self.residual_conv(residual)
            residual = self.residual_bn(residual)

        x += residual
        x = self.act3(x)

        if return_x_2:
            return x, x2
        else:
            return x


class Mean1(nn.Module):
    def __init__(self, dim, keep_dim=False):
        super(Mean1, self).__init__()
        self.dim = dim
        self.keep_dim = keep_dim

    def forward(self, input):
        return input.mean(self.dim, self.keep_dim)


class Mlp(nn.Module):
    """
    Implementation of MLP with 1*1 convolutions. Input: tensor with shape [B, C, H, W]
    """
    def __init__(self, in_features, hidden_features=None,
                 out_features=None, act_layer=nn.GELU, drop=0.):
        super().__init__()
        out_features = out_features or in_features
        hidden_features = hidden_features or in_features
        self.fc1 = nn.Conv2d(in_features, hidden_features, 1)
        self.act = act_layer()
        self.fc2 = nn.Conv2d(hidden_features, out_features, 1)
        self.drop = nn.Dropout(drop)
        self.apply(self._init_weights)

    def _init_weights(self, m):
        if isinstance(m, nn.Conv2d):
            trunc_normal_(m.weight, std=.02)
            if m.bias is not None:
                nn.init.constant_(m.bias, 0)

    def forward(self, x):
        x = self.fc1(x)
        x = self.act(x)
        x = self.drop(x)
        x = self.fc2(x)
        x = self.drop(x)
        return x


class LayerNormChannel(nn.Module):
    """
    LayerNorm only for Channel Dimension.
    Input: tensor in shape [B, C, H, W]
    """
    def __init__(self, num_channels, eps=1e-05):
        super().__init__()
        self.weight = nn.Parameter(torch.ones(num_channels))
        self.bias = nn.Parameter(torch.zeros(num_channels))
        self.eps = eps

    def forward(self, x):
        u = x.mean(1, keepdim=True)
        s = (x - u).pow(2).mean(1, keepdim=True)
        x = (x - u) / torch.sqrt(s + self.eps)
        x = self.weight.unsqueeze(-1).unsqueeze(-1) * x \
            + self.bias.unsqueeze(-1).unsqueeze(-1)
        return x


class GroupNorm(nn.GroupNorm):
    """
    Group Normalization with 1 group.
    Input: tensor in shape [B, C, H, W]
    """
    def __init__(self, num_channels, **kwargs):
        super().__init__(1, num_channels, **kwargs)

class SiLU(nn.Module):
    """export-friendly version of nn.SiLU()"""

    @staticmethod
    def forward(x):
        return x * torch.sigmoid(x)


def get_activation(name="silu", inplace=True):
    if name == "silu":
        module = nn.SiLU(inplace=inplace)
    elif name == "relu":
        module = nn.ReLU(inplace=inplace)
    elif name == "lrelu":
        module = nn.LeakyReLU(0.1, inplace=inplace)
    else:
        raise AttributeError("Unsupported act type: {}".format(name))
    return module


class BaseConv(nn.Module):
    """A Conv2d -> Batchnorm -> silu/leaky relu block""" # CBL

    def __init__(
        self, in_channels, out_channels, ksize, stride, groups=1, bias=False, act="silu"
    ):
        super().__init__()
        # same padding
        pad = (ksize - 1) // 2
        self.conv = nn.Conv2d(
            in_channels,
            out_channels,
            kernel_size=ksize,
            stride=stride,
            padding=pad,
            groups=groups,
            bias=bias,
        )
        self.bn = nn.BatchNorm2d(out_channels)
        self.act = get_activation(act, inplace=True)

    def forward(self, x):
        return self.act(self.bn(self.conv(x)))

    def fuseforward(self, x):
        return self.act(self.conv(x))


class DWConv1(nn.Module):
    """Depthwise Conv + Conv"""
    def __init__(self, in_channels, out_channels, ksize, stride=1, act="silu"):
        super().__init__()
        self.dconv = BaseConv(
            in_channels,
            in_channels,
            ksize=ksize,
            stride=stride,
            groups=in_channels,
            act=act,
        )
        self.pconv = BaseConv(
            in_channels, out_channels, ksize=1, stride=1, groups=1, act=act
        )

    def forward(self, x):
        x = self.dconv(x)
        return self.pconv(x)


class Bottleneck(nn.Module):
    # Standard bottleneck
    def __init__(
        self,
        in_channels,
        out_channels,
        shortcut=True,
        expansion=0.5,
        depthwise=False,
        act="silu",
    ):
        super().__init__()
        hidden_channels = int(out_channels * expansion)
        Conv = DWConv1 if depthwise else BaseConv
        self.conv1 = BaseConv(in_channels, hidden_channels, 1, stride=1, act=act)
        self.conv2 = Conv(hidden_channels, out_channels, 3, stride=1, act=act)
        self.use_add = shortcut and in_channels == out_channels

    def forward(self, x):
        y = self.conv2(self.conv1(x))
        if self.use_add:
            y = y + x
        return y


class ResLayer(nn.Module):
    "Residual layer with `in_channels` inputs."

    def __init__(self, in_channels: int):
        super().__init__()
        mid_channels = in_channels // 2
        self.layer1 = BaseConv(
            in_channels, mid_channels, ksize=1, stride=1, act="lrelu"
        )
        self.layer2 = BaseConv(
            mid_channels, in_channels, ksize=3, stride=1, act="lrelu"
        )

    def forward(self, x):
        out = self.layer2(self.layer1(x))
        return x + out


class SPPBottleneck(nn.Module):
    """Spatial pyramid pooling layer used in YOLOv3-SPP"""

    def __init__(
        self, in_channels, out_channels, kernel_sizes=(5, 9, 13), activation="silu"
    ):
        super().__init__()
        hidden_channels = in_channels // 2
        self.conv1 = BaseConv(in_channels, hidden_channels, 1, stride=1, act=activation)
        self.m = nn.ModuleList(
            [
                nn.MaxPool2d(kernel_size=ks, stride=1, padding=ks // 2)
                for ks in kernel_sizes
            ]
        )
        conv2_channels = hidden_channels * (len(kernel_sizes) + 1)
        self.conv2 = BaseConv(conv2_channels, out_channels, 1, stride=1, act=activation)

    def forward(self, x):
        x = self.conv1(x)
        x = torch.cat([x] + [m(x) for m in self.m], dim=1)
        x = self.conv2(x)
        return x


class CSPLayer(nn.Module):
    """C3 in yolov5, CSP Bottleneck with 3 convolutions"""

    def __init__(
        self,
        in_channels,
        out_channels,
        n=1,
        shortcut=True,
        expansion=0.5,
        depthwise=False,
        act="silu",
    ):
        """
        Args:
            in_channels (int): input channels.
            out_channels (int): output channels.
            n (int): number of Bottlenecks. Default value: 1.
        """
        # ch_in, ch_out, number, shortcut, groups, expansion
        super().__init__()
        hidden_channels = int(out_channels * expansion)  # hidden channels
        self.conv1 = BaseConv(in_channels, hidden_channels, 1, stride=1, act=act)
        self.conv2 = BaseConv(in_channels, hidden_channels, 1, stride=1, act=act)
        self.conv3 = BaseConv(2 * hidden_channels, out_channels, 1, stride=1, act=act)
        module_list = [
            Bottleneck(
                hidden_channels, hidden_channels, shortcut, 1.0, depthwise, act=act
            )
            for _ in range(n)
        ]
        self.m = nn.Sequential(*module_list)

    def forward(self, x):
        x_1 = self.conv1(x)
        x_2 = self.conv2(x)
        x_1 = self.m(x_1)
        x = torch.cat((x_1, x_2), dim=1)
        return self.conv3(x)


class Focus(nn.Module):
    """Focus width and height information into channel space."""

    def __init__(self, in_channels, out_channels, ksize=1, stride=1, act="silu"):
        super().__init__()
        self.conv = BaseConv(in_channels * 4, out_channels, ksize, stride, act=act)

    def forward(self, x):
        # shape of x (b,c,w,h) -> y(b,4c,w/2,h/2)
        patch_top_left = x[..., ::2, ::2]
        patch_top_right = x[..., ::2, 1::2]
        patch_bot_left = x[..., 1::2, ::2]
        patch_bot_right = x[..., 1::2, 1::2]
        x = torch.cat(
            (
                patch_top_left,
                patch_bot_left,
                patch_top_right,
                patch_bot_right,
            ),
            dim=1,
        )
        return self.conv(x)





import math
def autopad(k, p=None):  # kernel, padding
    # Pad to 'same'
    if p is None:
        p = k // 2 if isinstance(k, int) else [x // 2 for x in k]  # auto-pad
    return p


def DWConv(c1, c2, k=1, s=1, act=True):
    # Depthwise convolution
    return Conv(c1, c2, k, s, g=math.gcd(c1, c2), act=act)

class Conv(nn.Module):
    # Standard convolution
    def __init__(self, c1, c2, k=1, s=1, p=None, g=1, act=True):  # ch_in, ch_out, kernel, stride, padding, groups
        super(Conv, self).__init__()
        # print(c1, c2, k, s,)
        self.conv = nn.Conv2d(c1, c2, k, s, autopad(k, p), groups=g, bias=False)
        self.bn = nn.BatchNorm2d(c2)
        self.act = nn.SiLU() if act is True else (act if isinstance(act, nn.Module) else nn.Identity())

    def forward(self, x):
        # print("Conv", x.shape)
        return self.act(self.bn(self.conv(x)))

    def fuseforward(self, x):
        return self.act(self.conv(x))

class SPP1(nn.Module):
    # Spatial pyramid pooling layer used in YOLOv3-SPP
    def __init__(self, c1, c2, stride, k=(5, 9, 13)):
        super(SPP1, self).__init__()
        c_ = c1 // 2  # hidden channels
        self.cv1 = Conv(c1, c_, 1, 1)
        self.cv2 = Conv(c_ * (len(k)), c2, 1, 1)
        self.m = nn.ModuleList([nn.MaxPool2d(kernel_size=x, stride=stride, padding=x // 2) for x in k])


    def forward(self, x):
        x = self.cv1(x)
        return self.cv2(torch.cat([m(x) for m in self.m], 1))

class ChannelAttention(nn.Module):
    def __init__(self, in_planes, ratio=16):
        super(ChannelAttention, self).__init__()
        self.avg_pool= nn.AdaptiveAvgPool2d(1)
        self.max_pool= nn.AdaptiveMaxPool2d(1)

        self.fc1= nn.Conv2d(in_planes, in_planes//ratio, 1, bias=False)
        self.relu1= nn.ReLU()
        self.fc2= nn.Conv2d(in_planes//ratio, in_planes, 1, bias=False)
        self.sigmoid= nn.Sigmoid()

    def forward(self,x):
        avg_out= self.fc2(self.relu1(self.fc1(self.avg_pool(x))))
        max_out= self.fc2(self.relu1(self.fc1(self.max_pool(x))))
        out= avg_out + max_out
        return self.sigmoid(out)
       
class TwoEncoding(nn.Module):
    def __init__(self, in_channels, num_codes, pool="a", stride=3, k=[13,19,29], vert_anchors=8, horz_anchors=8):
    # def __init__(self, in_channels, num_codes):
        super(TwoEncoding, self).__init__()
        # init codewords and smoothing factor
        self.in_channels, self.num_codes = in_channels, num_codes
        self.ite_channels = in_channels
        self.pool = pool
        
        self.avgpool_rgb = nn.AdaptiveAvgPool2d((vert_anchors, horz_anchors))
        self.avgpool_ir = SPP1(self.in_channels, self.in_channels, stride, k)
        self.channel_attention = ChannelAttention(self.in_channels)

        self.cv1 = Conv(in_channels, self.ite_channels, 1, 1)
        self.cv2 = Conv(in_channels, self.ite_channels, 1, 1)
        self.cv3 = Conv(self.ite_channels*5, in_channels, 1, 1)
        self.fc = nn.Sequential(
            nn.BatchNorm1d(num_codes),
            nn.ReLU(inplace=True),
            Mean1(dim=1),
            nn.Linear(self.ite_channels, self.ite_channels),
            nn.Sigmoid())
        
        self.fc_1 = nn.Sequential(
            nn.BatchNorm1d(num_codes),
            nn.ReLU(inplace=True),
            Mean1(dim=1),
            nn.Linear(self.ite_channels, self.ite_channels),
            nn.Sigmoid())
        self.fc_2 = nn.Sequential(
            nn.BatchNorm1d(num_codes),
            nn.ReLU(inplace=True),
            Mean1(dim=1),
            nn.Linear(self.ite_channels, self.ite_channels),
            nn.Sigmoid())

        std = 1. / ((num_codes * in_channels)**0.5)
        # [num_codes, channels]
        self.codewords = nn.Parameter(
            torch.empty(num_codes, self.ite_channels, dtype=torch.float).uniform_(-std, std), requires_grad=True)
        # [num_codes]
        self.scale_x1 = nn.Parameter(torch.empty(num_codes, dtype=torch.float).uniform_(-1, 0), requires_grad=True)
        self.scale_x2 = nn.Parameter(torch.empty(num_codes, dtype=torch.float).uniform_(-1, 0), requires_grad=True)
        self.scale_1 = nn.Parameter(torch.empty(num_codes, dtype=torch.float).uniform_(-1, 0), requires_grad=True)
        self.scale_2 = nn.Parameter(torch.empty(num_codes, dtype=torch.float).uniform_(-1, 0), requires_grad=True)

    @staticmethod
    def scaled_l2_T(x1, x2, codewords, scale_x1, scale_x2):
        num_codes, in_channels = codewords.size()

        #expanded_x:[b, hxw, num_code, c1]
        expanded_x1 = x1.unsqueeze(2).expand((x1.size(0), x1.size(1), num_codes, in_channels))
        expanded_x2 = x2.unsqueeze(2).expand((x2.size(0), x2.size(1), num_codes, in_channels))

        # ---处理codebook (num_code, c1)
        reshaped_codewords = codewords.view((1, 1, num_codes, in_channels))

        # 把scale从1, num_code变成   batch, c2, N, num_codes
        reshaped_scale_x1 = scale_x1.view((1, 1, num_codes))  # N, num_codes
        reshaped_scale_x2 = scale_x2.view((1, 1, num_codes))  # N, num_codes

        # ---计算rik = z1 - d  # b, N, num_codes #scaled_l2_norm:[b, hxw, c]
        scaled_l2_norm = reshaped_scale_x1 * (expanded_x1 - reshaped_codewords).pow(2).sum(dim=3) \
                            + reshaped_scale_x2 * (expanded_x2 - reshaped_codewords).pow(2).sum(dim=3)
        return scaled_l2_norm

    @staticmethod
    def aggregate_T(assignment_weights, x1, x2, codewords):
        num_codes, in_channels = codewords.size()

        # ---处理codebook
        reshaped_codewords = codewords.view((1, 1, num_codes, in_channels))

        # ---处理特征向量x b, c1, N
        expanded_x1 = x1.unsqueeze(2).expand((x1.size(0), x1.size(1), num_codes, in_channels))
        expanded_x2 = x2.unsqueeze(2).expand((x1.size(0), x2.size(1), num_codes, in_channels))

        #变换rei  b, N, num_codes,-
        assignment_weights = assignment_weights.unsqueeze(3)  # b, wxh, num_codes, 1

        # ---开始计算eik,必须在Rei计算完之后 #encoded_feat:[b, num_codes, c]
        encoded_feat = (assignment_weights * (expanded_x1 + expanded_x2 - 2*reshaped_codewords)).sum(1)
        
        return encoded_feat
    
    @staticmethod
    def scaled_l2(x, codewords, scale):
        num_codes, in_channels = codewords.size()
        b = x.size(0)
        expanded_x = x.unsqueeze(2).expand((b, x.size(1), num_codes, in_channels))

        # ---处理codebook (num_code, c1)
        reshaped_codewords = codewords.view((1, 1, num_codes, in_channels))

        # 把scale从1, num_code变成   batch, c2, N, num_codes
        reshaped_scale = scale.view((1, 1, num_codes))  # N, num_codes

        # ---计算rik = z1 - d  # b, N, num_codes
        scaled_l2_norm = reshaped_scale * (expanded_x - reshaped_codewords).pow(2).sum(dim=3)
        return scaled_l2_norm

    @staticmethod
    def aggregate(assignment_weights, x, codewords):
        num_codes, in_channels = codewords.size()

        # ---处理codebook
        reshaped_codewords = codewords.view((1, 1, num_codes, in_channels))
        b = x.size(0)

        # ---处理特征向量x b, c1, N
        expanded_x = x.unsqueeze(2).expand((b, x.size(1), num_codes, in_channels))

        #变换rei  b, N, num_codes,-
        assignment_weights = assignment_weights.unsqueeze(3)  # b, N, num_codes,

        # ---开始计算eik,必须在Rei计算完之后
        encoded_feat = (assignment_weights * (expanded_x - reshaped_codewords)).sum(1)
        return encoded_feat

    def forward(self, x):
        x_1 = x[0]
        x_2 = x[1]
        _, _, h, w = x_1.size()

        # AvgPooling
        if self.pool == "avgpool": 
            x_1 = self.avgpool_rgb(x_1)  
            x_2 = self.avgpool_rgb(x_2)
        if self.pool == "buchang":   
            x_1 = self.avgpool_rgb(x_1)
            print(x_1.shape)
            x_1 = 0.1*self.channel_attention(x_2)*x_1 + x_1
            print(x_1.shape)
            x_2 = self.avgpool_ir(x_2)
            print(x_2.shape)
            x_2 = self.avgpool_rgb(x_2)
            print(x_2.shape)



        x_1 = self.cv1(x_1)
        x_2 = self.cv2(x_2)
        b, c, _, _ = x_1.size()




        # [batch_size, height x width, channels]
        x1 = x_1.view(b, c, -1).transpose(1, 2).contiguous()
        x2 = x_2.view(b, c, -1).transpose(1, 2).contiguous()

        # assignment_weights: [batch_size, channels, num_codes]
        assignment_weights = F.softmax(self.scaled_l2_T(x1, x2, self.codewords, self.scale_x1, self.scale_x2), dim=2)

        # aggregate: [batch_size, num_codes, channels]
        encoded_feat = self.aggregate_T(assignment_weights, x1, x2, self.codewords)

        # assignment_weights: [batch_size, channels, num_codes]
        assignment_weights_1 = F.softmax(self.scaled_l2(x1, self.codewords, self.scale_1), dim=2)

        # aggregate
        encoded_feat_1 = self.aggregate(assignment_weights_1, x1, self.codewords)

        # assignment_weights: [batch_size, channels, num_codes]
        assignment_weights_2 = F.softmax(self.scaled_l2(x2, self.codewords, self.scale_2), dim=2)

        # aggregate
        encoded_feat_2 = self.aggregate(assignment_weights_2, x2, self.codewords)

        gam = self.fc(encoded_feat)
        gam_1 = self.fc_1(encoded_feat_1)
        gam_2 = self.fc_2(encoded_feat_2)

        y = gam.view(b, c, 1, 1)
        y_1 = gam_1.view(b, c, 1, 1)
        y_2 = gam_2.view(b, c, 1, 1)

        x = self.cv3(torch.cat([x_1, x_2, (x_1 + x_2) * y, x_1 * y_1, x_2 * y_2], 1))
        if self.pool in ["avgpool", "buchang"]:   
            x = F.interpolate(x, size=([h, w]), mode='bilinear')

        return x, x        
       
a = torch.ones(2,3,256,80,80)
# b = SPP1(64,64,10,[13,19,29])
# b = SPP1(64,64,5,[9,13,19])
b = TwoEncoding(256, 64, "buchang", 2, [5,9,13],40, 40)
c =b(a)
print(c.shape)
