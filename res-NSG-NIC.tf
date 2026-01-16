resource "azurerm_network_interface_security_group_association" "NSG-NIC" {
  network_interface_id      = azurerm_network_interface.NIC.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}