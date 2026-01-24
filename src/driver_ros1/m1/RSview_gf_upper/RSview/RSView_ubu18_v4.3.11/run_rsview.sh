#! /usr/bin/env bash

# install the dependent in ubuntu20.04
dpkg -s libcanberra-gtk-module > /dev/null 2>&1
if [ $? != 0 ]; then
  sudo apt-get install libcanberra-gtk-module -y
fi

dpkg -s python2.7 > /dev/null 2>&1
if [ $? != 0 ]; then
  sudo apt-get install python2.7 -y
fi

ORIGIN_IFS=$IFS
IFS=$'\n'

BASE_PATH=$(cd "$(dirname "$0")" && pwd)/lib
export LD_LIBRARY_PATH=${BASE_PATH}:${LD_LIBRARY_PATH}

export PYTHONPATH=$PYTHONPATH:${BASE_PATH}/paraview-4.3
export PYTHONPATH=$PYTHONPATH:${BASE_PATH}/paraview-4.3/site-packages
export PYTHONPATH=$PYTHONPATH:${BASE_PATH}/paraview-4.3/site-packages/vtk
export PYTHONPATH=$PYTHONPATH:${BASE_PATH}/rsview-3.2/site-packages
$(cd "$(dirname "$0")" && pwd)/bin/RSView

IFS=${ORIGIN_IFS}
