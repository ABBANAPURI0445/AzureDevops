## Provider #########
provider "azurerm" {
  features {}
}
#### If you using Azure CLI no need define aurguments (tenant_id, client_id,SubscriptionID)  

### Resources Block 
#### Create Resource Group 
resource "azurerm_resource_group" "Peering" {
  name     = "Network-Practice_RG"
  location = "eastus2"
}
#### Craete VnetA and Subnet ############
resource "azurerm_virtual_network" "Vnet1" {
  name                = "VnetA"
  location            = azurerm_resource_group.Peering.location  
  resource_group_name = azurerm_resource_group.Peering.name
  address_space       = ["192.168.0.0/16"]
  subnet {
    name           = "SubA1"
    address_prefix = "192.168.1.0/24"
  }

  subnet {
    name           = "SubA2"
    address_prefix = "192.168.2.0/24"
  }
}

##### Create VnetB and Subnets #########
resource "azurerm_virtual_network" "Vnet2" {
  name                = "VnetB"
  location            = azurerm_resource_group.Peering.location  
  resource_group_name = azurerm_resource_group.Peering.name
  address_space       = ["192.168.12.0/22"]
  subnet {
    name           = "SubB1"
    address_prefix = "192.168.12.0/24"
  }

  subnet {
    name           = "SubB2"
    address_prefix = "192.168.13.0/24"
  }
}
