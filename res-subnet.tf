resource "azurerm_subnet" "subnet" {
  count                = length(var.subnet_prefix)
  name                 = var.subnet_prefix[count.index].name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.subnet_prefix[count.index].address_prefixes
  depends_on           = [azurerm_virtual_network.vnet]
}

variable "subnet_prefix" {
  type = list(object({
    name             = string
    address_prefixes = list(string)
  }))

  default = [
    {
      name             = "inchsubnet-1"
      address_prefixes = ["10.30.3.0/24"]
    },
    {
      name             = "inchsubnet-2"
      address_prefixes = ["10.30.4.0/24"]
    }
  ]
}

# variable "subnet_name" {
#   default = "subnet-inch"
#   type    = string
# }