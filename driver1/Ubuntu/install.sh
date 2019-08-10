#!/bin/bash
cd packages
sudo dpkg -i *.deb
sudo apt-get install -f
sudo m-a prepare
cd ..
unzip rtl8821CU.zip -d ~
cd ~/rtl8821CU
DRV_NAME=rtl8821CU
DRV_VERSION=5.2.5.3
sudo mkdir /usr/src/${DRV_NAME}-${DRV_VERSION}
git archive master | sudo tar -x -C /usr/src/${DRV_NAME}-${DRV_VERSION}
sudo dkms add -m ${DRV_NAME} -v ${DRV_VERSION}
sudo dkms build -m ${DRV_NAME} -v ${DRV_VERSION}
sudo dkms install -m ${DRV_NAME} -v ${DRV_VERSION}
sudo modprobe 8821cu