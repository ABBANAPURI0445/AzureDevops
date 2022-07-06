## Basic Building Blocks of Terraform 
   1. Provider   --> Manadatory 
   2. variable   --> Optional 
   3. resources  --> Manadatory
   4. provisioner --> Optional 
   5. OutPut Values  --> Optional  


### Terraform CLI --> terraform state -help 
   1. Terraform plan -out=planfile 
   2. Terraform show planfile
   3. terraform apply planfile 
   4. Terraform state show 
   5. Terraform state list 
   6. Terraaform state show resourcename 
   7. terraform console 
   8. terraform graph ``choco install graphviz -y


## Terraform CLI
   1. Taint ```terraform taint azurerm_linux_virtual_machine.vm```
   2. Import ```terraform import azurerm_linux_virtual_machine.vm  /subscriptions/f16a2d73-4a11-44d4-9568-1e17d9ce8cdd/resourceGroups/terraform-rg/providers/Microsoft.Compute/virtualMachines/terraform-vm```

   ```Remove-Item -Path C:\Users\nares\Desktop\Azure-Devops\AzureDevops\Terrafrom\Terraform-01\.terraform -Force```
  ``` Get-ChildItem * include * -Recurse | Remove-Item```
  ``` Remove-Item -path :\Users\nares\Desktop\Azure-Devops\AzureDevops\Terrafrom\Terraform-01\.terraform -recurse```
  3. Graph ```terraform graph | dot -Tsvg > graph.svg```
  4. terraform console


### Pending topics  --> after july 12th 
   1. Output 
   2. locals
   3. data source
   4. modules
   5. interpolation and functions 





