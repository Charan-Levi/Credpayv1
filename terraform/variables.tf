variable "subscription_id" {
  type      = string
  sensitive = true
}
variable "location" {
  type        = string
  description = "Location"
}

variable "address_space" {
  type = list(string)
}

variable "aks_subnet_prefix" {
  type = list(string)
}

variable "postgres_subnet_prefix" {
  type = list(string)
}


variable "node_count" {
  type = number
}
variable "vm_size" {
  type = string
}
variable "min_count" {
  type = number
}
variable "max_count" {
  type = number
}
variable "retention_in_days" {
  type = number
}

variable "keyvault_name" {
  type = string
}
variable "keyvault_resource_group_name" {
  type = string
}
variable "administrator_username" {
  type = string
}
variable "postgres_version" {
  type = number
}
variable "database_name" {
  type = string
}
