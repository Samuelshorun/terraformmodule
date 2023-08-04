resource "azurerm_resource_group" "Terralabs" {
  name     = var.namerg
  location = var.mylocation
}

#this is the new changes
# Create a virtual network within the resource group
resource "azurerm_virtual_network" "Terralabs" {
  name                = var.namevnt
  resource_group_name = azurerm_resource_group.Terralabs.name
  location            = azurerm_resource_group.Terralabs.location
  address_space       = ["10.0.0.0/16"]
}
