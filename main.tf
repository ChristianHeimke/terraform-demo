# deklaration der ressourcen gruppe und location
locals {
  Ressouce_Groupe_Name = "christian_heimke_rg_${formatdate("YYYY-MM-DD",timestamp())}"
  Ressouce_Groupe_Location = "West Europe"
}


## resourcen gruppe erstellen
resource "azurerm_resource_group" "christian_heimke_rg" {
  name     = local.Ressouce_Groupe_Name
  location = local.Ressouce_Groupe_Location
}
