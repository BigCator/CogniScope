#!/bin/bash

bagpath="/media/zxw/Data_Acquisition_4/20230829_id4_r7861x6_0_w2_tanglugonglu_night_data"         # bag file path
rate=0.5            # data play rate
start=0             # to start from when in second
duration=999999     # duration to play



# Don't change anything below!!!
gnome-terminal --tab -- bash -c "bash pcd_output.sh;exec bash;"
sleep 3



function getdir(){
    for element in `ls $1`
    do
        dir_or_file=$1"/"$element
        if [ -d $dir_or_file ]
        then
            getdir $dir_or_file
        else
            echo $dir_or_file
        fi
    done
}

root_dir=$bagpath
getdir $root_dir | grep 'bag$'

baglist=""
for bags in `getdir $root_dir | grep 'bag$'`
do
    baglist=$baglist" "$bags
done

rosbag play $baglist -r $rate -s $start -u $duration