terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }


  }
  backend "azurerm" {
    resource_group_name  = "rahulbaba"
    storage_account_name = "rahulbabastg"
    container_name       = "container1"
    key                  = "baba.tfstate"
  }

}
provider "azurerm" {
  features {

  }
  subscription_id = "b370fcf6-f0ad-42f7-9a37-cd11342b85ab"
}
