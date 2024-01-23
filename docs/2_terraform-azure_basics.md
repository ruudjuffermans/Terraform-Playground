# Basic Terraform File
```hcl
# Terraform Configuration Block
# This block is used to configure global settings for your Terraform project.
terraform {

  # Required Providers Block
  # Inside the terraform block, you define the providers that your project depends on.
  required_providers {

    # Azure Resource Manager Provider Block
    # This block specifies the "azurerm" provider, which is used to manage Azure resources.
    azurerm = {

      # Provider Source
      # The source specifies the location of the provider in the Terraform Registry.
      source = "hashicorp/azurerm"

      # Provider Version
      # The version specifies the exact version of the "azurerm" provider to use.
      # Pinning to a specific version helps ensure consistency.
      version = "=3.0.0"
    }
  }
}

# Azure Resource Manager Provider Block
# This block configures the "azurerm" provider with additional settings.
provider "azurerm" {

  # Features Block
  # The features block allows you to configure optional features for the "azurerm" provider.
  features {

    # Default Configuration
    # The features block is currently empty, which means it uses the default configurations.
    # This includes the default behavior and feature set provided by the provider.
  }
}

# Create a resource group
# - Resource Type: "azurerm_resource_group"
# - Resource Name: "example"
resource "azurerm_resource_group" "example" {

  # This is an attribute of the azurerm_resource_group resource and represents the name of the Azure Resource Group that you want to create. 
  name = "example-resources"

  # Specifies the Azure region where you want to create the resource group.
  location = "West Europe"
}

# Create a virtual network within the resource group
# - Resource Type: "azurerm_virtual_network"
# - Resource Name: "example"
resource "azurerm_virtual_network" "example" {

  # Name of the Virtual Network
  name = "example-network"

  # Resource Group Name
  # The virtual network is created within the same resource group as the example "azurerm_resource_group" defined elsewhere in the configuration.
  resource_group_name = azurerm_resource_group.example.name

  # Location
  # The Azure region where the virtual network should be created. It's set to the same location as the example resource group.
  location = azurerm_resource_group.example.location

  # Address Space
  # Specifies the IP address space for the virtual network in CIDR notation. In this case, it's a /16 subnet (10.0.0.0 - 10.0.255.255).
  address_space = ["10.0.0.0/16"]
}
```
