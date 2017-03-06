#!/usr/bin/env bash

echo "update yum repository..."
sudo sed  -i 's/BOOTPROTO=dhcp/BOOTPROTO=static/g' /etc/sysconfig/network-scripts/ifcfg-enp0s3
sudo sed  -i "$ a IPADDR=$1" /etc/sysconfig/network-scripts/ifcfg-enp0s3
sudo sed  -i "$ a NETMASK=255.255.255.0" /etc/sysconfig/network-scripts/ifcfg-enp0s3
sudo sed  -i "$ a GATEWAY=$2" /etc/sysconfig/network-scripts/ifcfg-enp0s3 
sudo rpm -iUvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum provides '*/applydeltarpm'
sudo yum install deltarpm -y
sudo yum install applydeltarpm -y
sudo yum install python -y
sudo yum install python-pip -y
sudo yum install ansible -y
sudo pip install docker-py
#sudo systemctl restart network