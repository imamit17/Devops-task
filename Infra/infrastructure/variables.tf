variable "rg_name" {
  type = string
}
variable "rg_location" {
  type = string
  default = "eastus"
}
variable "acr_name" {
  type = string
}
variable "aks_cluster_name" {
  type = string
}
variable "environment" {
  type = string
  default = "staging"
}
