## Azure Command Line Interface: 
   1. one of the way to create infrastracture in Azure 
   2. Generally Azure cli use repeatative task 

### Lab Setup 
   1. install Azure cli ```choco install azure-cli -y``` 
   2. login into Azure cli , You can use Powershell, CMD or gitbash
   3. Open Powershell and enter ```az login``` command.
   4. refer [clickhere](https://docs.microsoft.com/en-us/cli/azure/reference-index?view=azure-cli-latest) 
   5. Create RG ```az group create --location "eastus2" --name "rgcli"``` 
   6. Create Vnet ```az network vnet create -g rgcli -n vnetcli --address-prefix 192.168.0.0/24 --subnet-name subnet-cli-01 --subnet-prefix 192.168.0.0/27 -l westus2```
   7. create Subntes ```az network vnet subnet create --address-prefixes 192.168.0.32/27 -n subnet-cli-02 -g rgcli --vnet-name vnetcli```
   8. Create VM ```az vm create --name packer-nginx -g Compute-RG --admin-password "PackerNginx@2022" --admin-username Packer --computer-name Packer-Test --image app```
                            

                            