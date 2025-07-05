provider "azurerm" {
  features {}

  subscription_id = "fee282c7-707f-4b02-b27e-8f3bbf18d508"
}

module "core_infra" {
  source = "../modules"
  rg_name          = var.rg_name
  rg_location      = var.rg_location
  aks_cluster_name = var.aks_cluster_name
  acr_name         = var.acr_name
  environment      = var.environment   
}
