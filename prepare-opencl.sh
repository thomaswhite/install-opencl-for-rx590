#!/bin/bash

mkdir -p "opencl"

#wget https://drivers.amd.com/drivers/linux/19.50/amdgpu-pro-19.50-967956-ubuntu-18.04.tar.xz

tar="amdgpu-pro-19.50-967956-ubuntu-18.04"
tar -xvf "$tar.tar.xz"
pushd "$tar"

for f in libopencl1-amdgpu-pro_*_amd64.deb  opencl-amdgpu-pro_*_amd64.deb opencl-amdgpu-pro-dev_*_amd64.deb opencl-amdgpu-pro-icd_*_amd64.deb opencl-orca-amdgpu-pro-icd_*_amd64.deb ; do
  dpkg -x $f "../opencl"
done
popd

sudo chmod 777 -R opencl

rm -rf $tar
