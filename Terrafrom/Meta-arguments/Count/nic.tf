### create 2 nics first nic attach to pip-0 and second nic attact to pip-1 

resource "azurerm_network_interface" "myinterface" {
  count = length(azurerm_public_ip.pip)
  location = azurerm_resource_group.myrg[0].location
  name = "app-nic-${count.index}"
  resource_group_name = azurerm_resource_group.myrg[0].name 
  ip_configuration {
    name = "ip-nic-${count.index}"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = element(azurerm_public_ip.pip[*].id, count.index)
    subnet_id = element(azurerm_subnet.mysubnet[*].id, count.index)
  }
}
