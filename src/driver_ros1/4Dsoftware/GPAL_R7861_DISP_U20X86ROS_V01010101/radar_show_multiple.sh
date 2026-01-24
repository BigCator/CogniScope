#!/bin/bash


sudo -s <<EOF
id
sleep 1
source install/setup.bash
sleep 0.5
roslaunch radar_show gpal_4d_radar_show_multiple.launch
EOF


