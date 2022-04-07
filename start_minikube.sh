# source s_set_pass 
minikube delete
minikube start
minikube config set vm-driver docker
kubectl config use-context minikube
kubectl cluster-info
minikube dashboard