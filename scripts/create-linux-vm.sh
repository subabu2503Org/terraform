pwd
ls -lta
az group create  --location canadacentral --name rg-linux-vm
keyvault_name="sbwlinuxvmcertkv"     
az keyvault create --resource-group $rg-linux-vm --name $keyvault_name --location canadacentral --enabled-for-deployment   

az keyvault certificate list $keyvault_name
