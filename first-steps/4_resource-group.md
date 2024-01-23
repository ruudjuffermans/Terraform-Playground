# Resource Group
```hcl
# Create a resource group
# - Resource Type: "azurerm_resource_group"
# - Resource Name: "example"
resource "azurerm_resource_group" "example" {

  # This represents the name of the Azure Resource Group that you want to create. 
  name = "example-resources"

  # Specifies the Azure region where you want to create the resource group.
  location = "West Europe"

  # Specifies the tags for the resource group
  tags = {
    environment = "production"
    project     = "my-project"
    owner       = "Ruud Juffermans"
  }
}
```
