rosdep install --from-paths src -i -y
colcon build
#bashrc
export LD_LIBRARY_PATH=~/cyclonedds_ws/install/rmw_cyclonedds_cpp/lib:~/cyclonedds_ws/install/cyclonedds/lib:$LD_LIBRARY_PATH
source ~/cyclonedds_ws/install/setup.bash

