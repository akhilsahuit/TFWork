resource "azurerm_subnet" "subnet1" {
  name                 = "azaks-subnet1"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.azaks-vnet1.name
  address_prefixes     = ["10.0.0.0/24"]
}

resource "azurerm_subnet" "subnet2" {
  name                 = "azaks-subnet2"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.azaks-vnet1.name
  address_prefixes     = ["10.0.1.0/24"]
}