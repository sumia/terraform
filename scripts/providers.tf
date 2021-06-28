terraform {
	required_providers {
		azurerm = {
			version = "2.65.0"
		}

		kubernetes = {
			version = "2.3.2"
		}
	}
}

provider "azurerm" {
	features {}
}

provider "kubernetes" {
	host = azurerm_kubernetes_cluster.sa-cluster.kube_config[0].host
	client_certificate = base64decode(azurerm_kubernetes_cluster.sa-cluster.kube_config[0].client_certificate)
	client_key = base64decode(azurerm_kubernetes_cluster.sa-cluster.kube_config[0].client_key)
	cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.sa-cluster.kube_config[0].cluster_ca_certificate)
}
