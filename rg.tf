resource "azurerm_resource_group" "rg1" {
  name     = "azaks-rg1"
  location = "West Europe"
  tags = {
    enviornment = "dev"
  }
}