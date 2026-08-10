variable "name_prefix" {
  type = string
}
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

variable "node_count" {
  type = number
}
variable "vm_size" {
  type = string
}
variable "vnet_subnet_id" {
  type = string
}
variable "min_count" {
  type = number
}
variable "max_count" {
  type = number
}
variable "log_analytics_workspace_id" {
  type = string
}
