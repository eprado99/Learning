terraform {
  backend "azurerm" { }

  required_providers {
    azurerm = {
      source    = "hashicorp/azurerm"
      version   = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azuread" {
  tenant_id = variables.ARM_TENANT_ID
}
