resource "azurerm_public_ip" "pip_1" {
  name                = "azaks_pip1"
  resource_group_name = azurerm_resource_group.rg1.name
  location            = azurerm_resource_group.rg1.location
  allocation_method   = "Dynamic"

  tags = {
    environment = "dev"
  }
}