#!/usr/bin/env bash

echo "update yum repository..."

#sudo systemctl restart network
sudo rpm -iUvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum provides '*/applydeltarpm'
sudo yum install deltarpm -y
sudo yum install applydeltarpm -y
sudo yum install python -y
sudo yum install python-pip -y
sudo yum install ansible -y
sudo pip install docker-py
# ssh-keygen
# ssh-copy-id vagrant@192.168.10.213