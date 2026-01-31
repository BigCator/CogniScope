
import math
from copy import copy
from pathlib import Path

import numpy as np
import pandas as pd
import requests
import torch
import torch.nn as nn
from PIL import Image
from torch.cuda import amp
import torch.nn.functional as F

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
#------------------------------------- DualCBAM ------------------------------------------------------
# CBAM

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

class SpatialAttention(nn.Module):
    def __init__(self, kernel_size=7):
        super(SpatialAttention,self).__init__()
        self.conv1= nn.Conv2d(2, 1, kernel_size, padding=3, bias=False)  # kernel size = 7 Padding is 3: (n - 7 + 1) + 2P = n 
        self.sigmoid= nn.Sigmoid()

    def forward(self,x):
        avg_out = torch.mean(x, dim=1, keepdim=True) 
        max_out, _ = torch.max(x, dim=1, keepdim=True)
        x = torch.cat([avg_out, max_out], dim=1)
        x = self.conv1(x)
        return self.sigmoid(x)

class C3CBAM(nn.Module):
    def __init__(self, channelIn, channelOut, n):
        super(C3CBAM, self).__init__()
        inter_channels = channelIn // 2
        self.cv1 = Conv(channelIn, inter_channels, 1, 1)
        self.cv2 = Conv(channelIn, inter_channels, 1, 1)
        self.cv3 = Conv(2 * inter_channels, channelOut, 1) # act=FReLU(c2)
        self.m = nn.Sequential(*(CBAM(inter_channels, inter_channels) for _ in range(n)))

    def forward(self, x):
        return self.cv3(torch.cat((self.m(self.cv1(x)), self.cv2(x)), dim=1))

class CBAM(nn.Module):
    def __init__(self, channelIn, channelOut):
        super(CBAM, self).__init__()
        self.channel_attention = ChannelAttention(channelIn)
        self.spatial_attention = SpatialAttention()

    def forward(self, x):
        print(self.channel_attention(x).shape)
        out = self.channel_attention(x) * x
        # print(self.spatial_attention(out).shape)
        out = self.spatial_attention(out) * out
        return out

class DualCBAM(nn.Module):
    def __init__(self, channelIn, channelOut):
        super(DualCBAM, self).__init__()
        self.bu_CBAM = CBAM(channelIn, channelOut)
        self.ub_CBAM = CBAM(channelIn, channelOut)

    def forward(self, x):
        
        topdown_wei = self.bu_CBAM(x[0])
        bottomup_wei = self.ub_CBAM(x[1])
        xs = 2 * torch.mul(topdown_wei, x[1]) + 2 * torch.mul(bottomup_wei, x[0])
        return xs

# 增加如下代码
#------------------------------------- DualAttentionModule ------------------------------------------------------
class DAM(nn.Module):
    """
    Dual attention module.

    Args:
        in_channels (int): The number of input channels.
        out_channels (int): The number of output channels.
    """

    def __init__(self, in_channels, out_channels):
        super().__init__()
        inter_channels = in_channels // 16

        self.channel_conv = nn.Sequential(
            nn.Conv2d(in_channels, inter_channels, kernel_size=1, stride=1, padding=0, dilation=1),
            nn.BatchNorm2d(inter_channels),
            nn.ReLU(inplace=True)
        )
        
        # self.channel_conv1 = nn.Conv2d(in_channels, inter_channels, kernel_size=1, stride=1, padding=0, dilation=1),
        # self.channel_conv2 = nn.BatchNorm2d(inter_channels),
        # self.channel_conv3 = nn.ReLU(inplace=True)
        
        self.position_conv = nn.Sequential(
            nn.Conv2d(in_channels, inter_channels, kernel_size=1, stride=1, padding=0, dilation=1),
            nn.BatchNorm2d(inter_channels),
            nn.ReLU(inplace=True)
        )

        # self.channel_conv = Conv(in_channels, inter_channels, 1, 1)
        # self.position_conv = Conv(in_channels, inter_channels, 1, 1)
        self.pam = PAM(inter_channels)
        self.cam = CAM(inter_channels)
        # self.conv1 = Conv(inter_channels, inter_channels, 3, 1)
        # self.conv2 = Conv(inter_channels, inter_channels, 3, 1)
        # self.conv3 = Conv(inter_channels, out_channels, 3, 1)
        self.conv1 = nn.Sequential(
            nn.Conv2d(inter_channels, inter_channels, kernel_size=1, stride=1, padding=0),
            nn.BatchNorm2d(inter_channels),
            nn.ReLU(inplace=True)
        )
        self.conv2 = nn.Sequential(
            nn.Conv2d(inter_channels, inter_channels, kernel_size=1, stride=1, padding=0),
            nn.BatchNorm2d(inter_channels),
            nn.ReLU(inplace=True)
        )
        self.conv3 = nn.Sequential(
            nn.Conv2d(inter_channels, out_channels, kernel_size=1, stride=1, padding=0),
            nn.BatchNorm2d(out_channels),
            nn.ReLU(inplace=True)
        )

    def forward(self, feats):
        channel_feats = self.channel_conv(feats)

        channel_feats = self.cam(channel_feats)
        channel_feats = self.conv1(channel_feats)

        position_feats = self.position_conv(feats)
        position_feats = self.pam(position_feats)
        position_feats = self.conv2(position_feats)

        feats_sum = position_feats
        feats_sum = position_feats + channel_feats
        out = self.conv3(feats_sum)
        return out

class DualAttentionModule(nn.Module):
    """
    Dual attention module.

    Args:
        in_channels (int): The number of input channels.
        out_channels (int): The number of output channels.
    """

    def __init__(self, in_channels, out_channels):
        super().__init__()
        inter_channels = in_channels // 16

        self.channel_conv = nn.Sequential(
            nn.Conv2d(in_channels, inter_channels, kernel_size=1, stride=1, padding=0, dilation=1),
            nn.BatchNorm2d(inter_channels),
            nn.ReLU(inplace=True)
        )
          
        self.position_conv = nn.Sequential(
            nn.Conv2d(in_channels, inter_channels, kernel_size=1, stride=1, padding=0, dilation=1),
            nn.BatchNorm2d(inter_channels),
            nn.ReLU(inplace=True)
        )

        self.pam = PAM(inter_channels)
        self.cam = CAM(inter_channels)

        self.conv1 = nn.Sequential(
            nn.Conv2d(inter_channels, inter_channels, kernel_size=1, stride=1, padding=0),
            nn.BatchNorm2d(inter_channels),
            nn.ReLU(inplace=True)
        )
        self.conv2 = nn.Sequential(
            nn.Conv2d(inter_channels, inter_channels, kernel_size=1, stride=1, padding=0),
            nn.BatchNorm2d(inter_channels),
            nn.ReLU(inplace=True)
        )
        self.conv3 = nn.Sequential(
            nn.Conv2d(inter_channels, out_channels, kernel_size=1, stride=1, padding=0),
            nn.BatchNorm2d(out_channels),
            nn.ReLU(inplace=True)
        )

    def forward(self, feats):
        channel_feats = self.channel_conv(feats[0])

        channel_feats = self.cam(channel_feats)
        channel_feats = self.conv1(channel_feats)

        position_feats = self.position_conv(feats[1])
        position_feats = self.pam(position_feats)
        position_feats = self.conv2(position_feats)

        feats_sum = position_feats + channel_feats
        out = self.conv3(feats_sum)
        return out


class PAM(nn.Module):
    """
    Position attention module.
    Args:
        in_channels (int): The number of input channels.
    """

    def __init__(self, in_channels):
        super().__init__()
        mid_channels = in_channels // 8
        self.mid_channels = mid_channels
        self.in_channels = in_channels

        self.query_conv = nn.Conv2d(in_channels, mid_channels, 1, 1)
        self.key_conv = nn.Conv2d(in_channels, mid_channels, 1, 1)
        self.value_conv = nn.Conv2d(in_channels, in_channels, 1, 1)

        self.gamma = nn.Parameter(torch.zeros(1))

    def forward(self, x):
        # x_shape = x.shape()
        
        # query: n, h * w, c1
        query = self.query_conv(x)
        query = torch.reshape(query, (x.shape[0], self.mid_channels, -1))
        query = torch.transpose(query, 1, 2)
        # key: n, c1, h * w
        key = self.key_conv(x)
        key = torch.reshape(key, (x.shape[0], self.mid_channels, -1))

        # sim: n, h * w, h * w
        sim = torch.bmm(query, key)
        sim = F.softmax(sim, -1)


        value = self.value_conv(x)
        value = torch.reshape(value, (x.shape[0], self.in_channels, -1))
        sim = torch.transpose(sim, 1, 2)

        # feat: from (n, c2, h * w) -> (n, c2, h, w)
        feat = torch.bmm(value, sim)
        feat = torch.reshape(feat,
                              (x.shape[0], self.in_channels, x.shape[2], x.shape[3]))
        
        out = self.gamma * feat + x
        return out


class CAM(nn.Module):
    """
    Channel attention module.
    Args:
        in_channels (int): The number of input channels.
    """

    def __init__(self, channels):
        super().__init__()

        self.channels = channels
        self.gamma = nn.Parameter(torch.zeros(1))

    def forward(self, x):
        # x_shape = x.shape()
        # query: n, c, h * w
        query = torch.reshape(x, (x.shape[0], self.channels, -1))
    
        # key: n, h * w, c
        key = torch.reshape(x, (x.shape[0], self.channels, -1))
        key = torch.transpose(key, 1, 2)
  
        # sim: n, c, c
        sim = torch.bmm(query, key)
        # The danet author claims that this can avoid gradient divergence
        sim = torch.max(sim, axis=-1, keepdim=True).values.tile(
            [1, 1, self.channels]) - sim
        sim = F.softmax(sim, -1)
      

        # feat: from (n, c, h * w) to (n, c, h, w)
        value = torch.reshape(x, (x.shape[0], self.channels, -1))
        feat = torch.bmm(sim, value)
        feat = torch.reshape(feat, (x.shape[0], self.channels, x.shape[2], x.shape[3]))

        out = self.gamma * feat + x
        return out
a = torch.ones(2,3,256,40,40)
b = DualAttentionModule(256,256)
c =b(a)
print(c.shape)