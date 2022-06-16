### getting the values in terminal(without  looking at portal)
### these output values you can reference to other terraform files 

output "publicip" {
  value = azurerm_public_ip.pipvm.ip_address
  description = "display Public Address"
} 