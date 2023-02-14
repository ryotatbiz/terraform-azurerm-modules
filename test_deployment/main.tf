# Create Resource Group.
module "resource_group" {
  source   = "../resource_group"
  for_each = try(var.resource_groups, {})
  location = var.location
  name     = each.value.name
  tags     = var.tags
}

# Create Virtual Network & Subnet
module "virtual_network" {
  source = "../virtual_network"
  depends_on = [
    module.resource_group
  ]
  for_each            = try(var.virtual_networks, {})
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
  subnets             = each.value.subnets
  location            = var.location
  tags                = var.tags
}