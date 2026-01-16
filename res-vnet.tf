resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.address_space
}

variable "vnet_name" {
  default = "vnet-inch"
  type    = string
}

variable "address_space" {
  default = ["10.30.0.0/16"]
  type    = list(string)
}