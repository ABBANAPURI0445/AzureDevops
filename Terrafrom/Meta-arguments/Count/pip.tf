resource "azurerm_public_ip" "pip" {
  count = length(var.subnet-vnet0)
  name = "pip-app-${count.index}"
  allocation_method = "Dynamic"
  location = azurerm_resource_group.myrg[0].location
  resource_group_name = azurerm_resource_group.myrg[0].name 
  domain_name_label = "app-${count.index}"
  tags = {
    "Env" = "nprd"
  }

}
