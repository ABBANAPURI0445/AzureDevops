resource "azurerm_public_ip" "pipvm" {
  name                = "pip-vm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
}
resource "azurerm_public_ip" "pipvm01" {
  name                = "pip-vm01"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
}