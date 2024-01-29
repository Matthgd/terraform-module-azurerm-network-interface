variable "name" {
  type        = string
  description = "(Required) The name of the Network Interface. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = "(Required) The location where the Network Interface should exist. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the Resource Group in which to create the Network Interface. Changing this forces a new resource to be created."
}

variable "ip_configurations" {
  type = list(object({
    name                          = string
    subnet_id                     = string
    private_ip_address_allocation = string
    private_ip_address            = string
  }))
  description = "(Required) ip settings block  "
}

variable "enable_accelerated_networking" {
  type        = bool
  description = "(Optional) Should Accelerated Networking be enabled? Defaults to false."
  default     = false
}