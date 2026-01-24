#!/bin/bash

savepath="." # directory to save the rosbags

# Don't change anything below!!!
cd $savepath
rosbag record /Radar_point_0 /Radar_point_1 /Radar_point_2 /Radar_point_3 /Radar_point_4 /Radar_point_5 --split --size 2048 -b 4096