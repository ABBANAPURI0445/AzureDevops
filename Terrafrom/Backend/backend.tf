terraform {
  backend "azurerm" {
    resource_group_name  = "Azurelb"
    storage_account_name = "backendpract"
    container_name       = "remotestate"
    key                  = "backend.terraform.tfstate"
  }
}
