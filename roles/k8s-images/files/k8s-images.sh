

images=(kube-proxy-amd64:v1.5.1 kube-discovery-amd64:1.0 kubedns-amd64:1.9 kube-scheduler-amd64:v1.5.1 kube-controller-manager-amd64:v1.5.1 kube-apiserver-amd64:v1.5.1 etcd-amd64:3.0.14-kubeadm kube-dnsmasq-amd64:1.4 exechealthz-amd64:1.2 pause-amd64:3.0 kubernetes-dashboard-amd64:v1.5.1 dnsmasq-metrics-amd64:1.0)
for imageName in ${images[@]} ; do
  docker pull registry.cn-hangzhou.aliyuncs.com/gcr_io/$imageName
  docker tag registry.cn-hangzhou.aliyuncs.com/gcr_io/$imageName gcr.io/google_containers/$imageName
  #docker rmi registry.cn-hangzhou.aliyuncs.com/gcr_io/$imageName
done

docker pull registry.cn-hangzhou.aliyuncs.com/kube_containers/kubernetes-dashboard-amd64:v1.5.1
docker tag registry.cn-hangzhou.aliyuncs.com/kube_containers/kubernetes-dashboard-amd64:v1.5.1 gcr.io/google_containers/kubernetes-dashboard-amd64:v1.5.1
docker pull registry.cn-hangzhou.aliyuncs.com/google-containers/kube2sky:1.14
docker tag registry.cn-hangzhou.aliyuncs.com/google-containers/kube2sky:1.14  gcr.io/google_containers/kube2sky:1.14
docker pull registry.cn-hangzhou.aliyuncs.com/google-containers/skydns:2015-10-13-8c72f8c
docker tag registry.cn-hangzhou.aliyuncs.com/google-containers/skydns:2015-10-13-8c72f8c  gcr.io/google_containers/skydns:2015-10-13-8c72f8c