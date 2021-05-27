# set env variables
resourceGroupName="week2-rg"
location="southcentralus"
deploymentName="week2-deploy"

# create resource group
az group create -n $resourceGroupName -l $location

# deploy the vms
az deployment group create \
-g $resourceGroupName \
-n $deploymentName \
--template-file template.json

# list public ip
# az vm list-ip-addresses -g containerd-rg | grep ipAddress