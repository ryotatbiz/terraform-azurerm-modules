variable "name" {
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created."
}

variable "address_space" {
  description = "(Required) The address space that is used the virtual network. You can supply more than one address space."
}

variable "location" {
  description = "(Required) The location/region where the virtual network is created. Changing this forces a new resource to be created."
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
}