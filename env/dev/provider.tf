terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.30.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "pan-rg-main"
    storage_account_name = "panstorag"
    container_name       = "tfstate"
    key                  = "git.dev.tfstate"
  }
}

provider "azurerm" {
  features {}
  # using service principal for authenticate and env variable 
 # client_id       = ""
  #tenant_id       = ""
 # client_secret   = ""
 # subscription_id = ""
}

