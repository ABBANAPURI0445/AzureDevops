resource "azurerm_linux_virtual_machine" "myvm" {
  count               = length(azurerm_network_interface.myinterface)
  name                = "terraform-vm-${count.index}"
  resource_group_name = azurerm_resource_group.myrg[0].name
  location            = azurerm_resource_group.myrg[0].location
  size                = "Standard_E2bds_v5"
  admin_username      = var.username[count.index]
  network_interface_ids = [
    element(azurerm_network_interface.myinterface[*].id, count.index)
  ]
  disable_password_authentication = false
  admin_password                  = "Terraform@1234"

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
