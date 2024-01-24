# Azure VM

1. **Initialize the Terraform Environment**
```bash
terraform init
```

2. **Format the File**
```bash
terraform fmt
```

3. **Review the Execution Plan**
```bash
terraform plan
```

4. **Deploy the Plan**
```bash
terraform apply --auto-approve
```

5. **Show State**
```bash
terraform state list
```

6. **Review Destroy Plan**
```bash
terraform plan --destroy
```

7. **Destroy the Resources**
```bash
terraform destroy --auto-approve
```
ssh-keygen -t rsa

azure_rsa

terraform state list

terraform state show azurerm_linux_virtual_machine.example


ssh -i ~/.ssh/azure_rsa adminuser@20.105.165.58

exit