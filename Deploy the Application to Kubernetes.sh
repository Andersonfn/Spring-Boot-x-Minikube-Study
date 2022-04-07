echo  kubectl create deployment gorillalogic-app --image=gorillalogic-image --dry-run=client -o=yaml > deployment.yaml
echo echo --- >> deployment.yaml
echo kubectl create service clusterip gorillalogic-app --tcp=8080:8080 --dry-run=client -o=yaml >> deployment.yaml
echo "executar comandos acima para criar o deployment.yaml"
echo " acrescentar
         imagePullPolicy: IfNotPresent 
no nó containers em deployments
alterar type para   type: LoadBalancer
"
kubectl apply -f deployment.yaml