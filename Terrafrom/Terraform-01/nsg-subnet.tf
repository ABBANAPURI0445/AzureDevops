resource "azurerm_subnet_network_security_group_association" "nsgassociate" {
  subnet_id                 = azurerm_subnet.subnetA.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}