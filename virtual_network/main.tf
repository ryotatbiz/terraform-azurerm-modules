# Manages a Virtual Network
resource "azurerm_virtual_network" "main" {
  name                = var.virtual_network.name
  resource_group_name = var.virtual_network.resource_group_name
  address_space       = var.virtual_network.address_space
  location            = var.location
  tags                = var.tags
}

# Create Subnet
module "subnet" {
  source               = "../subnet"
  for_each             = try(var.virtual_network.subnets, {})
  name                 = each.value.name
  resource_group_name  = var.virtual_network.resource_group_name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = each.value.address_prefixes
}