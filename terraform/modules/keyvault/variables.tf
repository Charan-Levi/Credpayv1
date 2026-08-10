variable "keyvault_name" {
  type = string
}
variable "keyvault_resource_group_name" {
  type = string
}
variable "postgres_fqdn" {
  type = string
}
variable "postgres_admin_username" {
  type = string
}
variable "postgres_admin_password" {
  type      = string
  sensitive = true
}
variable "postgres_database_name" {
  type = string
}
