# Create Resource Group.
module "resource_group" {
  source   = "../resource_group"
  for_each = try(var.resource_groups, {})
  location = var.location
  name     = each.value.name
  tags     = var.tags
}

# Create Virtual Network
module "virtual_network" {
  source = "../virtual_network"
  depends_on = [
    module.resource_group
  ]
  for_each        = try(var.virtual_networks, {})
  virtual_network = each.value.virtual_network
  location        = var.location
  tags            = var.tags
}