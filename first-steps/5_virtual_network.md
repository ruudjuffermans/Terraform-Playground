# Resource Group
```hcl
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
