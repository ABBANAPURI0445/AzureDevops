resource "azurerm_availability_set" "avset" {
  name                = "avset01"
  location            = azurerm_resource_group.rg.location ## resourcetype.localname.name
  resource_group_name = azurerm_resource_group.rg.name
}