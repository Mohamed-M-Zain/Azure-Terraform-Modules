terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.8.0"
    }
  }
}

provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "terraform-resource-group" {
  name     = var.resource_group_name
  location = "West Europe"
}

resource "azurerm_virtual_network" "vnet" {
  count = length(var.vnet_name)
  name  = var.vnet_name[count.index]
  address_space= [var.address_space[count.index]]
  location = azurerm_resource_group.terraform-resource-group.location
  resource_group_name = var.resource_group_name
}