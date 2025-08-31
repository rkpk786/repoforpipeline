terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 4.0"
    }
  }
}
provider "azurerm" {
    features {
      
    }
  subscription_id = "b370fcf6-f0ad-42f7-9a37-cd11342b85ab"
}

# resource "azurerm_resource_group" "rg" {
#     name = "rg123"
#     location = "west us"
  
# }
# JAB RESOURCE BANA HUA HO HUM YE CODE USE KAREGE 
# resource "azurerm_storage_account" "stg" {
#     name = "stg123"
#     resource_group_name = "rg123"
#     location = "central india "
#     account_tier = "Standard"
#     account_replication_type = "GRS"
  
# } 
# IMPILCIT DEPENDANCY MAI HUM YE CODE USE KARTE HAI 
# resource "azurerm_storage_account" "stg" {
#     name = "stg123"
#     resource_group_name = azurerm_resource_group.rg.name
#     location = azurerm_resource_group.rg.location
#     account_tier = "Standard"
#     account_replication_type = "GRS"
# }

# explicit dependency mai hum ye code use kare hai 

resource "azurerm_resource_group" "rg" {
    name = "rg12398"
    location = "west us"
  
}
resource "azurerm_storage_account" "stg" {
    depends_on = [ azurerm_resource_group.rg ]
    name = "stg12389"
    resource_group_name = "rg12398"
    location = "east us"
    account_tier = "Standard"
    account_replication_type = "GRS"
}