# Install-opencl-for-rx590
Script to extract and copy OpenCL files for Radeon RX590 on Ubuntu

1. run configure-opencl.sh. This will install the latest OpenCL drivers at in April 2020.

2. If it is not working download the Ubuntu archive from https://www.amd.com/en/support 
Current direct link https://drivers.amd.com/drivers/linux//19.50/amdgpu-pro-19.50-967956-ubuntu-18.04.tar.xz from this page https://www.amd.com/en/support/kb/release-notes/rn-rad-lin-19-50-unified

3. Copy the tar file in this directory and update the the value of the *tar* variable to the name of the file without the .tar.xz extension.

4. First run prepare-opencl.sh

5. Then run configure-opencl.sh

6. Open Darktable and enjoy the OpenCL support.

This script automates the instructions published in https://discuss.pixls.us/t/install-opencl-from-amdgpu-pro-under-ubuntu-non-supported-version/17528 

All the credits go to the autor *wallie*
