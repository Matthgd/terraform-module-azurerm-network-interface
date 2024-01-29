output "id" {
  value       = azurerm_network_interface.main.id
  sensitive   = false
  description = "The ID of the Network Interface."
}

output "private_ip_address" {
  value       = azurerm_network_interface.main.private_ip_address
  sensitive   = false
  description = " The first private IP address of the network interface."
}

output "private_ip_addresses" {
  value       = azurerm_network_interface.main.private_ip_addresses
  sensitive   = false
  description = "The private IP addresses of the network interface.."
}