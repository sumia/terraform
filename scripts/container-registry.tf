resource "azurerm_container_registry" "sa-container-registry" {
	name = "sillyconreg" 
	resource_group_name = azurerm_resource_group.sa-learn.name
	location = "UK South"
	admin_enabled = true
	sku = "Basic"
}

output "registry_hostname" {
	value = azurerm_container_registry.sa-container-registry.login_server
}

output "registry_un" {
	value = azurerm_container_registry.sa-container-registry.admin_username
}

output "registry_pw" {
	value = azurerm_container_registry.sa-container-registry.admin_password
	sensitive = true
}