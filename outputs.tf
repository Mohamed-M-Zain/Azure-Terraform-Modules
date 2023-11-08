output "resource_group_id" {
  value = azurerm_resource_group.terraform-resource-group.id
}

output "virtual_network_ids" {
  value = azurerm_virtual_network.vnet[*].id
}

output "virtual_network_names" {
  value = azurerm_virtual_network.vnet[*].name
}
