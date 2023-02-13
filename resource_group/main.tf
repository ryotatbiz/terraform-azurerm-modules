# Manages a Resource Group.
resource "azurerm_resource_group" "main" {
  location = var.location
  name     = var.name
  tags     = var.tags
}