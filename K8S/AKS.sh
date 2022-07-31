#Add permitions for registry
az aks update -g <RESOURCE-GROUP> -n <CLUSTER_NAME> --attach-acr <REGISTRY_NAME_NOT_URL>
az aks update -g AKS -n AKS1 --attach-acr exadeltask09registry

#Connect azure shell to claster
az account set --subscription 97aa7dc7-3942-43c5-bf9e-f2c7a80135b1
az aks get-credentials --resource-group AKS --name AKS

#Show 
kubectl get nodes
kubectl get pods
kubectl get deployment 

kubectl port-forward my-app 5555:8080

# Delite
kubectl delete deployment <deployment_name>