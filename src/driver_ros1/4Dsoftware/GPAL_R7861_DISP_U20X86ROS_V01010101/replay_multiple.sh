#!/bin/bash

gnome-terminal --tab -- bash -c "roscore;exec bash;"
sleep 1

gnome-terminal --tab -- bash -c "source install/setup.bash;roslaunch radar_show gpal_4d_radar_show_multiple_replay.launch;exec bash;"
