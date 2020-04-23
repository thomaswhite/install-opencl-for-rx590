#!/bin/bash
sudo mkdir -p /opt/amd/lib
sudo cp -v opencl/opt/amdgpu-pro/lib/x86_64-linux-gnu/*.so* /opt/amd/lib

sudo mkdir -p /etc/OpenCL/vendors
sudo  sudo cp -v opencl/etc/OpenCL/vendors/*.icd  /etc/OpenCL/vendors/

echo  "/opt/amd/lib" | sudo tee /etc/ld.so.conf.d/amd.conf

sudo ldconfig

sudo apt-get -qq  -y install clinfo
clinfo | grep Device

