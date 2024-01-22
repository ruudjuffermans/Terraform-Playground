# Basic Terraform CLI Commands

Terraform is an infrastructure as code (IaC) tool that allows you to define and provision infrastructure resources using configuration files. Here are some basic Terraform CLI commands to help you get started:

1. **Create a Terraform File**
```
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "testgroup"
  location = "westeurope"
}
```

1. **Initialize Terraform Configuration**
```bash
terraform init
```

2. **View Help and Documentation**
```bash
terraform plan
```

3. **Apply Configuration Changes**
```bash
terraform apply
```

4. **Set Default Subscription**
```bash
terraform show
```

5. **Set Default Subscription**
```bash
terraform destroy
```