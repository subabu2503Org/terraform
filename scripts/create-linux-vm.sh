pwd
ls -lta
rg="rg-linux-vm"
echo $rg
#az group create  --location canadacentral --name $rg
keyvault_name="sbwlinuxvmcertkv" 
echo $keyvault_name
#az keyvault create --resource-group rg-linux-vm --name $keyvault_name --location canadacentral --enabled-for-deployment   
echo "keyvault certificate list-"
az keyvault certificate list --vault-name $keyvault_name
echo "az vm create-"
az vm create \
 --resource-group $rg \
 --name sbwapacheVM \
 --image UbuntuLTS \
 --admin-username azureuser \
 --generate-ssh-keys \
 --custom-data .\cloud-init-apache.txt \
 --public-ip-address-dns-name apachesecurevm
echo "az vm open-port-"
 az vm open-port \
--resource-group $rg \
--name apacheVM \
--port 443
