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

variable "retention_in_days" {
  type = number
}
