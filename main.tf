# Configure Azure Provider
terraform {
  required_providers {
     azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 3.59.0"
    } 
  }
  backend "azurerm" {}  
  required_version = ">= 0.14.9"
}

provider "azurerm" {
  features {}

  skip_provider_registration = "true"
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.prefix}-ResourceGroup1"
  location = "Central India"
}







