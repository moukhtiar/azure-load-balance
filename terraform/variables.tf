variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "rg-nginx-lb-lab"
}

variable "vnet_address_space" {
  description = "VNet address space"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_prefix" {
  description = "Subnet address prefix"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "vm_size" {
  description = "VM size"
  type        = string
  default     = "Standard_DC1ds_v3"
}

variable "admin_username" {
  description = "Linux admin username"
  type        = string
  default     = "linuxadmin"
}

variable "admin_password" {
  description = "Linux admin password"
  type        = string
  sensitive   = true
  default     = "Walaal@123"
}
