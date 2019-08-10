#!/bin/bash
cd packages
sudo dpkg -i *.deb
sudo apt-get install -f
sudo m-a prepare
cd ..
unzip rtl8821CU.zip -d ~
cd ~/rtl8821CU
sudo modprobe 8821cu -r
DRV_NAME=rtl8821CU
DRV_VERSION=5.2.5.3
sudo dkms remove ${DRV_NAME}/${DRV_VERSION} --all