terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.88.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
  tags = {
    environment = "production"
    project     = "my-project"
    owner       = "Ruud Juffermans"
  }
}

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location

  # Address Space
  # Specifies the IP address space for the virtual network in CIDR notation. In this case, it's a /16 subnet (10.0.0.0 - 10.0.255.255).
  address_space = ["10.0.0.0/16"]

  tags = {
    environment = "production"
    project     = "my-project"
    owner       = "Ruud Juffermans"
  }
}