terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
}
provider "azurerm" {
  features {}
  client_id       = "808ed14d-706d-4f5e-aaee-090e316fdcd7"
  client_secret   = "_Ie8Q~MibHKpX91~3VfHM1YpCwJvJjK1luakabfg"
  tenant_id       = "9c1e50f3-2148-40bc-b941-0f3e5c9ceeb6"
  subscription_id = "6a6991ac-13fa-4cad-8cb4-87d94302dd32"
}
