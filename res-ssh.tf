

resource "azurerm_ssh_public_key" "ssh-key" {
  name                = "inch-ssh"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  public_key          = file("~/.ssh/id_rsa.pub")
}
