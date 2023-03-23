terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.87.0"
    }
  }
  backend "azurerm" {
    resource_group_name = var.rsgname
    storage_account_name = var.stgactname
    container_name = "tfstate"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "resourcegroup" {
  name     = var.rsgname2
  location = var.location
}


