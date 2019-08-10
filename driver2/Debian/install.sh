#!/bin/bash
cd packages
sudo dpkg -i *.deb
sudo apt-get install -f
sudo m-a prepare
cd ..
cd rtl8821CU
sudo chmod -R 755 .
sudo ./dkms-install.sh
sudo modprobe 8821cu