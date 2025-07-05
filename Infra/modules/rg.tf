resource "azurerm_resource_group" "rg" {
  name     = "${var.rg_name}-${var.environment}"
  location = var.rg_location
}
