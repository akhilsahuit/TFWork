resource "azurerm_subnet_network_security_group_association" "sga_1" {
  subnet_id                 = azurerm_subnet.subnet1.id
  network_security_group_id = azurerm_network_security_group.nsg1.id
}