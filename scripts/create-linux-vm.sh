pwd
ls -lta
rg="rg-linux-vm"
echo $rg
#az group create  --location canadacentral --name $rg
keyvault_name="sbwlinuxvmcertkv1" 
echo $keyvault_name
#az keyvault create --resource-group rg-linux-vm --name $keyvault_name --location canadacentral --enabled-for-deployment   
echo "keyvault certificate list-"
az keyvault certificate list --vault-name $keyvault_name
echo "az vm create-"
az vm create \
 --resource-group $rg \
 --name sbwapacheVM \
 --image Ubuntu2204  \
 --admin-username azureuser \
 --generate-ssh-keys \
 --public-ip-sku Standard \
 --custom-data ./cloud-init-nginx.txt \
 --public-ip-address-dns-name apachesecurevm
pwd
ls -la /home/runner/.ssh/
ls -la /home/runner/.ssh/id_rsa.pub
echo "id_rsa.pub"
cat /home/runner/.ssh/id_rsa.pub
ls -la /home/runner/.ssh/id_rsa
echo "id_rsa"
cat /home/runner/.ssh/id_rsa
echo "az vm open-port-"
 az vm open-port \
--resource-group $rg \
--name sbwapacheVM  \
--port 80
