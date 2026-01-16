resource "azurerm_linux_virtual_machine" "IncharaVM" {
  name                = "Inchara-linuxVM"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_D2s_v3"

  admin_username = "azureuser"

  network_interface_ids = [
    azurerm_network_interface.NIC.id
  ]

  admin_ssh_key {
    username   = "azureuser"
    public_key = azurerm_ssh_public_key.ssh-key.public_key
  }

  os_disk {
    name                 = "inchara-os-disk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  # tags = {
  #   environment = "testing"

  # }
  # lifecycle {
  #   ignore_changes = [
  #     tags
  #   ]
  # }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

