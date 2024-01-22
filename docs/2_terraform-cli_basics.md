# Basic Terraform CLI Commands

Terraform is an infrastructure as code (IaC) tool that allows you to define and provision infrastructure resources using configuration files. Here are some basic Terraform CLI commands to help you get started:

1. **Login to Azure:**
```bash
az login
```
This command will open a web page where you can log in with your Azure account credentials. After successful login, it will authenticate your CLI session.

2. **View Help and Documentation**
```bash
az --help
```
This command lets you view Help and Documentation

3. **List Available Subscriptions**
```bash
az account list --output table
```
This command will list all the Azure subscriptions associated with your account.

4. **Set Default Subscription**
```bash
az account set --subscription 2aa844c5-110c-42cf-a6b9-af6aff91afef
```
Use this command to set a specific Azure subscription as the default for your current session.

5. **Create a Resource Group**
```bash
az group create --name testgroup --location westeurope
```
This command creates a new resource group with the specified name and location.

6. **List Resource Groups**
```bash
az group list --output table
```
This command lists all the resource groups in your current subscription.

7. **Create a Virtual Machine**
```bash
az vm create --resource-group testgroup --name testvm --image Debian11 --generate-ssh-keys
```
Use this command to create a virtual machine in a specified resource group with the given parameters.

8. **List Virtual Machines**
```bash
az vm list --output table
```
This command lists all the virtual machines in your current subscription.

9. **Start a Virtual Machine**
```bash
az vm start --resource-group testgroup --name testvm
```
This command starts a specific virtual machine in a specified resource group.

10. **Stop a Virtual Machine**
```bash
az vm stop --resource-group testgroup --name testvm
```
This command stops a specific virtual machine in a specified resource group.

11. **Deallocate a Virtual Machine**
```bash
az vm deallocate --resource-group testgroup --name testvm
```
This command deallocate a specific virtual machine in a specified resource group.

12. **Delete a Virtual Machine**
```bash
az vm delete -resource-group testgroup --name testvm --yes
```
This command deletes a specific virtual machine in a specified resource group.

13. **Delete a Resource Group**
```bash
az group delete --name testgroup --yes
```
This command deletes a resource group with the specified name.
