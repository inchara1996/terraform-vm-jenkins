resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = var.rg_name
}

variable "location" {
  default = "westus"
  type    = string
}

variable "rg_name" {
  default = "inchrg"
  type    = string
}