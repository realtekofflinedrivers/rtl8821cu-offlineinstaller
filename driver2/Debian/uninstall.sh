#!/bin/bash
cd packages
sudo dpkg -i *.deb
sudo apt-get install -f
cd ..
cd rtl8821CU
sudo modprobe 8821cu -r
sudo chmod -R 755 .
sudo ./dkms-remove.sh