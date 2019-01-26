#!/bin/bash

# NVIDIA K80 drivers.
wget http://us.download.nvidia.com/tesla/396.44/nvidia-diag-driver-local-repo-ubuntu1604-396.44_1.0-1_amd64.deb

sudo dpkg -i nvidia-diag-driver-local-repo-ubuntu1604-396.44_1.0-1_amd64.deb

sudo apt-key add /var/nvidia-diag-driver-local-repo-396.44/7fa2af80.pub

sudo dpkg -i nvidia-diag-driver-local-repo-ubuntu1604-396.44_1.0-1_amd64.deb

sudo apt-get update

sudo apt-get install cuda-drivers

## REBOOT!

# Install CUDA.
wget https://developer.nvidia.com/compute/cuda/9.2/Prod2/local_installers/cuda-repo-ubuntu1604-9-2-local_9.2.148-1_amd64

sudo dpkg -i cuda-repo-ubuntu1604-9-2-local_9.2.148-1_amd64

sudo apt-key add /var/cuda-repo-9-2-local/7fa2af80.pub

sudo apt-get update

sudo apt-get install cuda

# PIP.
curl https://bootstrap.pypa.io/get-pip.py | sudo -H python3

# Python dev.
sudo apt-get install python3.5-dev

# Dependencies.
sudo apt-get install libatlas-base-dev liblapack-dev libblas-dev -y

# SCS.
git clone --recursive https://github.com/bodono/scs-python.git

cd scs-python

sudo -H python3 setup.py install --scs --gpu

# CVXPY
sudp -H pip install cvxpy




