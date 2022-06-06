resource "azurerm_linux_virtual_machine" "vm" {
  name                = "terraform-vm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_E2bds_v5"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.nic.id
  ]
  disable_password_authentication = false 
  admin_password =  "terraform@1234"

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
  connection {
    type     = "ssh"
    user     = "adminuser"
    password = var.pwd
    host     = azurerm_public_ip.pipvm.ip_address
  }

  provisioner "remote-exec" {
    inline = [
     "sudo apt-get update",
     "sudo apt-get install tomcat9 -y",
     "sudo apt-get install apache2 -y"
    ]
  }
}