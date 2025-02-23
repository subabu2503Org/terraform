pwd
ls -lta
rg="rg-linux-vm"
echo $rg
az group create  --location canadacentral --name $rg
keyvault_name="sbwlinuxvmcertkv" 
echo $keyvault_name
az keyvault create --resource-group rg-linux-vm --name $keyvault_name --location canadacentral --enabled-for-deployment   

az keyvault certificate list --$keyvault_name
