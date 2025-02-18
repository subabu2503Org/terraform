variable "resource_group_location" {
  default     = "southcentralus"
  description = "Location of the resource group."
  type        = string
}

variable "resource_group_name" {
  default     = "rg-terraform"
  description = "Name of the resource group."
  type        = string
}
