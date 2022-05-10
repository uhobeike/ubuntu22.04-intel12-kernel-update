
#!/bin/bash -e
uname -r
mkdir -p ~/kernel_update 
wget -c https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.18-rc1/amd64/linux-headers-5.18.0-051800rc1_5.18.0-051800rc1.202204032230_all.deb
wget -c https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.18-rc1/amd64/linux-modules-5.18.0-051800rc1-generic_5.18.0-051800rc1.202204032230_amd64.deb
wget -c https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.18-rc1/amd64/linux-image-unsigned-5.18.0-051800rc1-generic_5.18.0-051800rc1.202204032230_amd64.deb
sudo dpkg -i *.deb
rm -r ~/kernel_update 
reboot -n