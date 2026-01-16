terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.100"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  #resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
  skip_provider_registration = false
}



module "resource_group" {
  source   = "../../Modules/resource-group"
  name     = var.resource_group_name
  location = var.location
}

module "ACR" {
  source              = "../../Modules/ACR"
  name                = var.acr_name
  location            = var.location
  resource_group_name = module.resource_group.name
}

module "keyvaults" {
  source              = "../../Modules/keyvaults"
  name                = "nimbus-dev10111"
  location            = var.location
  resource_group_name = module.resource_group.name
}

module "AKS" {
  source              = "../../Modules/AKS"
  name                = var.aks_name
  location            = var.location
  resource_group_name = module.resource_group.name
  node_count          = var.node_count
  environment         = var.environment
  owner               = var.owner
  acr_id              = module.ACR.acr_id


}


