resource "azurerm_virtual_network" "name"{
name = "vnet-01"
address_space=["10.1.0.0/16"]
resource_group_name=azurerm_resource_group.rg.name
location = "east-us"
tags= {
    name="satya-rg"
 }
 
}

resource "azurem_subnet" "name" {
name="subnet-01"
address_prefixes=["10.1.1.0/24"]
resource_group_name=  azurerm_resource_group.rg.name
virtual_network_name=azurerm_virtual_network.name.name
}