# deklaration der ressourcen gruppe und location
locals {
  Ressource_Group_Name = "christian_heimke_rg_${formatdate("YYYY-MM-DD",timestamp())}"
  Ressource_Group_Location = "West Europe"
}


## resourcen gruppe erstellen
resource "azurerm_resource_group" "christian_heimke_rg" {
  name     = local.Ressource_Group_Name
  location = local.Ressource_Group_Location
}


## erstellen des storage accounts
resource "azurerm_storage_account" "demo_account" {
  name                     = "demostorageaccount"
  resource_group_name      = local.Ressource_Group_Name
  location                 = local.Ressource_Group_Location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  depends_on = [
    azurerm_resource_group.christian_heimke_rg
  ]
}

