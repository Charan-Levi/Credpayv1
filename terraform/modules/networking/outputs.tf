output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "subnet_ids" {
  value = { aks = azurerm_subnet.aks_subnet.id, postgres = azurerm_subnet.postgres_subnet.id }
}
