#!/usr/bin/env bash

echo "update yum repository..."
#sudo systemctl restart network
sudo yum install epel-release -y
sudo yum provides '*/applydeltarpm'
sudo yum install deltarpm -y
sudo yum install applydeltarpm -y
sudo yum install python -y
sudo yum install python-pip -y
sudo yum install ansible -y
sudo pip install docker-py
# ssh-keygen
# ssh-copy-id vagrant@192.168.10.213
# FLANNEL_OPTIONS="-iface=enp0s8"