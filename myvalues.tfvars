terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.23.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "workstation_group"
      storage_account_name = "dvsazstgaccount"
      container_name       = "dvsterraformstate"
      key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "acc40cb3-4f49-4770-9b68-a2e546c448e5"
}
