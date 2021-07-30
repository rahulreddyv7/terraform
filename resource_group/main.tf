resource "azurerm_resource_group" "RG-PL" {
  name = var.resourcegroup
  location = var.location

  tags = {
    "DEV" = "Development"
    "PL" = "Pipeline"
  }
}

/*
resource "azurerm_virtual_network" "VNET" {
  name = "terraform-vnet"
  resource_group_name = azurerm_resource_group.RG-PL.name
  location = azurerm_resource_group.RG-PL.location
  address_space = [ "10.10.0.0/16" ]

  subnet = [ {
    address_prefix = "10.10.0.0/24"
    name = "dev"
  } ]
}

terraform {
  backend "azurerm" {
      resource_group_name = azurerm_resource_group.RG-PL.name
      storage_account_name = "value"
      container_name = "value"
      key = "value"
  }
}
*/