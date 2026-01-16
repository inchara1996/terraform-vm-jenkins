resource "azurerm_subnet" "subnet" {
  count =length(var.subnet_prefix)
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.subnet_prefix[count.index].subnet_prefix
  depends_on           = [azurerm_virtual_network.vnet]
}

variable "subnet_prefix" {
  type    = list(object({
    name = string
    address_prefixes = string
  }))

  default =[
    {
        name = "inchsubnet-1"
        address_prefixes = "10.30.1.0/24"
    },
    {
        name = "inchsubnet-2"
        address_prefixes = "10.30.2.0/24"
    }
  ]
  }

variable "subnet_name" {
  default = "subnet-inch"
  type    = string
}