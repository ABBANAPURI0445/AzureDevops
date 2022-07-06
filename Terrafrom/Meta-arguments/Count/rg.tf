/*resource "azurerm_resource_group" "myrg" {
   name = "myresorcegroup"
   location = "eastus2"
}*/

### If you want create mutliple resources withing single resource block -- count or for_each 

##### create 3 rg's with single resource block 

resource "azurerm_resource_group" "myrg" {
  count = 3   ### starts with 0 , 1, 2
  name = "myresourcegroup-${count.index}"
  location = "eastus2"
} 