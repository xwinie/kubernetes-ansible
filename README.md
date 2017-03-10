# kubernetes-ansible

kubernetes-ansible is used to deploy k8s, etcd, docker and flannel.

This is forked from [kubernetes-ansible](https://github.com/eparis/kubernetes-ansible). According to the enviroment we used, I do some cut and modification.

This script can be used only in centos7 and the hosts should connect to the internet. And ansible1.9 is also required.

This script deploy three parts of cluster, etcd, master and one or more nodes.

|parts|services|
|-----|-------|
|etcd|etcd|
|master|kube-apiserver/kube-scheduler/kube-controller|
|node|kube-proxy/flannl/kubelet/docker|

# How to use
    $ vagrant up
    $ vagrant ssh k8s1 # Every Node computer
    $ sudo systemctl restart network

## Set up ssh access via public keys
    $ ssh-keygen
    $ ssh-copy-id vagrant@192.168.10.213

You can modify inventory and then execute 

    $ cd pre-setup
    $ ansible-playbook -i ../inventory ping.yml # This will look like it fails, that's ok

## Set up the actual kubernetes cluster

You already did the config!  Just run the setup::

    $ ansible-playbook -i inventory setup.yml  #if vagrant ,need modified /etc/sysconf/flanneld:FLANNEL_OPTIONS="-iface=enp0s8"


# Changelog

## 0.1

- first version

## 0.2

- add kubedns
- add iptables for flannel
## 0.3

- add kube-dashboard
