#!/usr/bin/env bash
for SERVICES in etcd kube-apiserver kube-controller-manager kube-scheduler docker flanneld; do 
    systemctl restart $SERVICES
    systemctl enable $SERVICES
    systemctl status $SERVICES 
done