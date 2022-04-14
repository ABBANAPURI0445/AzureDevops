####### Provider ############### 
 provider "azurerm" {
  features {} 
} 
###### Resources#############
## Network
## Subnets 

resource "azurerm_virtual_network" "vnet" {
  name                = "HomeHUb"
  location            = "eastus2"
  resource_group_name = "Networking-rg"
  address_space       = ["192.168.12.0/22"]
 

  subnet {
    name           = "subnet1"
    address_prefix = "192.168.12.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "192.168.13.0/24"
  }
  subnet {
    name           = "subnet3"
    address_prefix = "192.168.14.0/24"
  }
  
}

