resource "azurerm_resource_group" "sa-learn" {
	name = var.app_name
	location = var.location
}
