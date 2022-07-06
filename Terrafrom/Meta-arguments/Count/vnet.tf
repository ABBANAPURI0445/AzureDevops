resource "azurerm_virtual_network" "myvnet" {
   count = length(var.vnetcidr)
   name = "vnet-nprd-app-${count.index}"
   location = azurerm_resource_group.myrg[0].location
   resource_group_name = azurerm_resource_group.myrg[0].name 
   address_space = [var.vnetcidr[count.index]] 
} 

##### Subnets 
############ create 2 subnets in vnet-0 ###############
resource "azurerm_subnet" "mysubnet" {
    count = length(var.subnet-vnet0)
    name = "nprd-app-vnet0-subnet-${count.index}"
    virtual_network_name = azurerm_virtual_network.myvnet[0].name 
    resource_group_name = azurerm_resource_group.myrg[0].name 
    address_prefixes = [ var.subnet-vnet0[count.index] ]
}

######### create 2 subntes in vnet-1 ###########

resource "azurerm_subnet" "mysubnet1" {
    count = length(var.subnet-vnet1)
    name = "nprd-app-vnet1-subnet-${count.index}"
    virtual_network_name = azurerm_virtual_network.myvnet[1].name 
    resource_group_name = azurerm_resource_group.myrg[0].name 
    address_prefixes = [ var.subnet-vnet1[count.index] ]
}