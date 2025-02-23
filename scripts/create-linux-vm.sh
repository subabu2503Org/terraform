rg-linux-vm = rg-linux-vm
az group create --name $rg-linux-vm --location canadacentral
keyvault_name=sbwlinuxvmcertkv     
az keyvault create \
    --resource-group $rg-linux-vm \
    --name $keyvault_name \
    --enabled-for-deployment   

az keyvault certificate list $keyvault_name
