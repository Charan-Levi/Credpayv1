output "postgres_server_id" {
  value = azurerm_postgresql_flexible_server.psql.id
}

output "postgres_server_name" {
  value = azurerm_postgresql_flexible_server.psql.name
}

output "postgres_fqdn" {
  value = azurerm_postgresql_flexible_server.psql.fqdn
}

output "postgres_database_name" {
  value = azurerm_postgresql_flexible_server_database.psql-database.name
}
output "postgres_admin_username" {
  value = azurerm_postgresql_flexible_server.psql.administrator_login
}
output "administrator_password" {
  value     = random_password.admin.result
  sensitive = true
}
