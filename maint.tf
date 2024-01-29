resource "azurerm_network_interface" "main" {
  name                          = var.name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  enable_accelerated_networking = var.enable_accelerated_networking
  dynamic "ip_configuration" {
    for_each = [for config in var.ip_configurations : config]
    content {
      name                          = ip_configuration.value["name"]
      subnet_id                     = ip_configuration.value["subnet_id"]
      private_ip_address_allocation = ip_configuration.value["private_ip_address_allocation"]
      private_ip_address            = ip_configuration.value["private_ip_address"]
    }
  }
}
