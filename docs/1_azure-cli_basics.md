# Basic Azure CLI Commands
Azure Command-Line Interface (Azure CLI) is a command-line tool that allows you to interact with Microsoft Azure, Microsoft's cloud computing platform. Here are some basic Azure CLI commands to help you get started:

If you follow the commands one by one all the way to the end you should have created and then deleted a resource group and a virtual machine.
with the comamnds `az vm list --output table` & `az group list --output table` you can make sure that you end up with a clean azure account.

### Login to Azure:
```bash
az login
```

### View Help and Documentation
```bash
az --help
```

### Verify Logged in state
```bash
az account show
```

### List Available Subscriptions
```bash
az account list --output table
```

### Set Default Subscription
```bash
az account set --subscription 2aa844c5-110c-42cf-a6b9-af6aff91afef
```

### Create a Resource Group
```bash
az group create --name testgroup --location westeurope
```

### List Resource Groups
```bash
az group list --output table
```

### Create a Virtual Machine
```bash
az vm create --resource-group testgroup --name testvm --image Debian11 --generate-ssh-keys
```

### List Virtual Machines
```bash
az vm list --output table
```

### Start a Virtual Machine
```bash
az vm start --resource-group testgroup --name testvm
```

### Stop a Virtual Machine
```bash
az vm stop --resource-group testgroup --name testvm
```

### Deallocate a Virtual Machine
```bash
az vm deallocate --resource-group testgroup --name testvm
```

### Delete a Virtual Machine
```bash
az vm delete -resource-group testgroup --name testvm --yes
```

### Delete a Resource Group
```bash
az group delete --name testgroup --yes
```