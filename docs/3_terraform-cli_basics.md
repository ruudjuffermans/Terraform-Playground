# Basic Terraform CLI Commands

Terraform is an infrastructure as code (IaC) tool that allows you to define and provision infrastructure resources using configuration files. Here are some basic Terraform CLI commands to help you get started:

1. **Initialize Terraform Configuration**
The terraform init command in Terraform is used to initialize a Terraform working directory. It performs several important tasks:
1. Provider Installation: If your configuration references any external Terraform providers (such as the Azure Provider, AWS Provider, etc.), terraform init downloads and installs the required provider plugins. These provider plugins enable Terraform to interact with the corresponding cloud or infrastructure services.
2. Module Installation: If your configuration uses Terraform modules from external sources (such as the Terraform Registry or Git repositories), terraform init downloads and installs those modules, making them available for use in your project.
3. Plugin Version Validation: It checks that the installed provider and module versions match the versions specified in your configuration. This helps ensure consistency in your infrastructure code.
4. Initialize the Backend: If you're using a remote backend (e.g., remote state storage in Azure Storage, AWS S3, or HashiCorp Terraform Cloud), terraform init initializes the backend configuration, such as creating a workspace or connecting to the remote state.
5. Create the .terraform Directory: The command creates a .terraform directory in your working directory, where it stores provider plugins, modules, and other metadata required for the operation of your Terraform configuration.
6. Configuration Validation: terraform init validates your Terraform configuration files for syntax errors and correct structure.
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