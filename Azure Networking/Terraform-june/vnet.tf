## create vnet and 4 subnets
resource "azurerm_virtual_network" "network" {
  name                = var.vnetname
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["192.168.0.0/16"]
}

resource "azurerm_subnet" "subnetA" {
  name                 = var.subnetAname
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.network.name  ## terraform-network
  address_prefixes     = var.subnetAcidr
}
resource "azurerm_subnet" "subnetB" {
  name                 = var.subnetBname
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.network.name  ## terraform-network
  address_prefixes     = var.subnetBcidr
}
resource "azurerm_subnet" "subnetC" {
  name                 = var.subnetCname
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.network.name  ## terraform-network
  address_prefixes     = var.subnetCcidr
}
resource "azurerm_subnet" "subnetD" {
  name                 = var.subnetDname
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.network.name  ## terraform-network
  address_prefixes     = var.subnetDcidr
}