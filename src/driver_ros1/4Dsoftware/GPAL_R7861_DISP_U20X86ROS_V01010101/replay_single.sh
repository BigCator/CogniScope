#!/bin/bash

gnome-terminal --tab -- bash -c "roscore;exec bash;"
sleep 1

gnome-terminal --tab -- bash -c "rviz -d install/share/radar_show/launch/gpal_4d_radar_show_single.rviz;exec bash;"