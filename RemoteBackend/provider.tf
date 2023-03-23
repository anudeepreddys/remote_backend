terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.87.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "tfstateRG01"
    storage_account_name = "tfstate01647403179"
    container_name = "tfstate"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
