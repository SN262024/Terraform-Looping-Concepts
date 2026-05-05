terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.69.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "e8d3e0f5-0b3e-4121-be0b-58a7e13e93e4"
}