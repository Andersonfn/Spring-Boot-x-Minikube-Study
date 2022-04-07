eval $(minikube docker-env)
docker build -t gorillalogic-image .
minikube image load gorillalogic-image
