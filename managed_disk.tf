resource "azurerm_managed_disk" "managed_disk" {
  name                 = "${local.vm_name}-disk1"
  location             = azurerm_resource_group.rg1.location
  resource_group_name  = azurerm_resource_group.rg1.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 10
}

resource "azurerm_virtual_machine_data_disk_attachment" "disk_attach" {
  managed_disk_id    = azurerm_managed_disk.managed_disk.id
  virtual_machine_id = azurerm_linux_virtual_machine.vm-1.id
  lun                = "10"
  caching            = "ReadWrite"
}

variable "prefix" {
  default = "azaks"
}

locals {
  vm_name = "${var.prefix}-vm"
}