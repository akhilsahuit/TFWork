resource "azurerm_network_security_group" "nsg1" {
  name                = "azaks-nsg1"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
}