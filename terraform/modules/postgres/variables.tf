variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group"
}

variable "location" {
  type        = string
  description = "Location"
}

variable "tags" {
  type        = map(string)
  description = "Provided Tags"
}
variable "name_prefix" {
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
