resource "azurerm_kubernetes_cluster" "aks" {
  name                = "${var.aks_cluster_name}-${var.environment}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "aks-${var.environment}"
  identity {
    type = "SystemAssigned"
  }
  default_node_pool {
    name       = "${var.environment}np"
    vm_size    = "Standard_DS2_v2"
    node_count = 3
  }
  
}