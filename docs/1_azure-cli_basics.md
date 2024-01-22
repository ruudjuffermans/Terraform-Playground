# Basic Azure CLI Commands

Azure Command-Line Interface (Azure CLI) is a command-line tool that allows you to interact with Microsoft Azure, Microsoft's cloud computing platform. Here are some basic Azure CLI commands to help you get started:

1. **Login to Azure:**
```bash
az login
```

2. **View Help and Documentation**
```bash
az --help
```

3. **List Available Subscriptions**
```bash
az account list --output table
```

4. **Set Default Subscription**
```bash
az account set --subscription 2aa844c5-110c-42cf-a6b9-af6aff91afef
```

5. **Create a Resource Group**
```bash
az group create --name testgroup --location westeurope
```

6. **List Resource Groups**
```bash
az group list --output table
```

7. **Create a Virtual Machine**
```bash
az vm create --resource-group testgroup --name testvm --image Debian11 --generate-ssh-keys
```

8. **List Virtual Machines**
```bash
az vm list --output table
```

9. **Start a Virtual Machine**
```bash
az vm start --resource-group testgroup --name testvm
```

10. **Stop a Virtual Machine**
```bash
az vm stop --resource-group testgroup --name testvm
```

11. **Deallocate a Virtual Machine**
```bash
az vm deallocate --resource-group testgroup --name testvm
```

12. **Delete a Virtual Machine**
```bash
az vm delete -resource-group testgroup --name testvm --yes
```

13. **Delete a Resource Group**
```bash
az group delete --name testgroup --yes
```