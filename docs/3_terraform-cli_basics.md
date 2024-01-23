# Basic Terraform CLI Commands

Terraform is an infrastructure as code (IaC) tool that allows you to define and provision infrastructure resources using configuration files. Here are some basic Terraform CLI commands to help you get started:

### terraform init
The terraform init command in Terraform is used to initialize a Terraform working directory. 

```bash
terraform init
```

It performs several important tasks:

1. Provider Installation: If your configuration references any external Terraform providers (such as the Azure Provider, AWS Provider, etc.), terraform init downloads and installs the required provider plugins. These provider plugins enable Terraform to interact with the corresponding cloud or infrastructure services.

2. Module Installation: If your configuration uses Terraform modules from external sources (such as the Terraform Registry or Git repositories), terraform init downloads and installs those modules, making them available for use in your project.

3. Plugin Version Validation: It checks that the installed provider and module versions match the versions specified in your configuration. This helps ensure consistency in your infrastructure code.

4. Initialize the Backend: If you're using a remote backend (e.g., remote state storage in Azure Storage, AWS S3, or HashiCorp Terraform Cloud), terraform init initializes the backend configuration, such as creating a workspace or connecting to the remote state.

5. Create the .terraform Directory: The command creates a .terraform directory in your working directory, where it stores provider plugins, modules, and other metadata required for the operation of your Terraform configuration.

6. Configuration Validation: terraform init validates your Terraform configuration files for syntax errors and correct structure.

By running terraform init in your project directory, you ensure that your Terraform environment is properly set up, and all necessary dependencies are available for future operations like terraform plan and terraform apply. It's typically one of the first commands you run when starting a new Terraform project or when working on an existing one, after checking out the code from version control.

Remember that you need to run terraform init in your project directory only once initially and whenever you change the provider or module requirements in your configuration. It's not necessary to run terraform init before every plan or apply operation unless there have been changes to the provider or module dependencies.



### terraform plan
The terraform plan command in Terraform is used to generate an execution plan. It examines the current state of your infrastructure, compares it to the desired state described in your Terraform configuration files, and then produces a detailed report of the actions Terraform will take to achieve the desired state. 

```bash
terraform plan
```

Here's a breakdown of what terraform plan does:

1. Configuration Reading: Terraform first reads your Terraform configuration files (typically *.tf files) to understand the desired infrastructure state you've defined. It identifies the resources, their configurations, and the relationships between them.

2. State Inspection: Terraform checks the current state of your infrastructure by examining the Terraform state file (usually named terraform.tfstate). This file contains information about the existing resources provisioned by Terraform.

3. Resource Comparison: Terraform compares the desired state in your configuration files with the current state recorded in the state file. It identifies differences, such as resources that need to be created, modified, or destroyed.

4. Dependency Analysis: Terraform analyzes the dependencies between resources to determine the correct order of operations. It ensures that resources are created or modified in the appropriate sequence to maintain consistency.

5. Output Generation: Terraform generates an execution plan that includes a list of actions to be taken. The plan provides details on what will happen, such as which resources will be created, updated, or deleted, along with any associated configuration changes.

6. Resource Graph Visualization: Some versions of Terraform provide a graphical representation of the resource dependency graph in the plan, making it easier to visualize the relationships between resources.

7. Plan Summary: The terraform plan command concludes by displaying a summary of the changes Terraform will make to your infrastructure, including the resource count for each action (create, update, delete). It also estimates any cost changes, if applicable.

8. Interactive Confirmation: Terraform will not apply any changes by default. Instead, it prompts you to review the execution plan and confirm whether you want to proceed with applying the changes.

The primary purposes of `terraform plan` are:
- To provide visibility into what Terraform will do before actually making any changes. This helps you understand the impact of your changes and identify any potential issues.

- To detect errors or conflicts in your configuration before applying changes, reducing the likelihood of unintentional or destructive modifications to your infrastructure.

### terraform apply
The terraform apply command in Terraform is used to apply the changes defined in your Terraform configuration to your infrastructure. It takes the execution plan generated by terraform plan and executes the actions necessary to bring your infrastructure into the desired state. 

```bash
terraform apply
```

Here's an explanation of what terraform apply does:

1. Execution Plan Application: terraform apply takes the execution plan generated by terraform plan as input. This plan contains a list of actions that Terraform will perform to create, update, or delete resources to achieve the desired state defined in your configuration.

2. Resource Creation and Modification: Terraform begins the process of creating and modifying resources as specified in the execution plan. It follows the sequence determined during the planning phase to ensure that dependencies between resources are properly handled.

3. Resource Deletion: If the plan includes the deletion of resources (e.g., resources that are no longer defined in your configuration), Terraform proceeds to delete them. This step ensures that your infrastructure stays in sync with your configuration.

4. Resource Updates: For existing resources that require updates (e.g., changes to configuration attributes), Terraform applies the necessary changes to bring them in line with your configuration. This can include modifying resource properties, updating security groups, or adjusting network settings, among other things.

5. Outputs: If your Terraform configuration includes output values (e.g., IP addresses, DNS names, or other information), terraform apply displays those values in the terminal output after successfully applying the changes.

6. State File Update: After successfully applying the changes, Terraform updates the Terraform state file (terraform.tfstate) to reflect the current state of your infrastructure. The state file keeps track of resource IDs, attribute values, and other important information for future Terraform operations.

7. Confirmation: By default, terraform apply will prompt you to confirm that you want to proceed with applying the changes. You can review the changes proposed in the execution plan before confirming.

8. Parallelism: Terraform applies changes in parallel whenever possible, improving the efficiency of the provisioning process. The level of parallelism can be adjusted using the -parallelism flag if needed.

9. Logging and Outputs: terraform apply provides real-time logging and displays output messages to keep you informed about the progress and results of the operation. It also records a summary of the changes made.

10. Error Handling: If any errors occur during the application of changes, Terraform will report them and roll back the changes to maintain the previous state of the infrastructure. This helps prevent partial or inconsistent updates.

In summary, terraform apply is a critical command for executing changes to your infrastructure based on your Terraform configuration. It ensures that your infrastructure matches the desired state you've defined and maintains consistency between your code and the actual resources provisioned in your cloud environment.

### terraform show
The terraform show command in Terraform is used to display the current state or information about the resources managed by Terraform. It provides a readable and human-friendly representation of the Terraform state, which includes details about the resources and their attributes that were created, modified, or deleted during previous terraform apply operations. 

```bash
terraform show
```

Here's how terraform show works:

1. Display Current State: When you run terraform show without any arguments, it reads the Terraform state file (terraform.tfstate) in your working directory by default.

2. Readable Output: terraform show produces an easily readable and formatted output that displays information about the resources in your infrastructure. This output is presented in a human-readable format, which makes it useful for reviewing the current state of your infrastructure resources.

3. Resource Details: For each resource managed by Terraform, the command shows detailed information, including the resource type, name, provider, attributes, and their current values. This can help you inspect the current configuration of your infrastructure.

4. Formatted JSON Output: If you pass the -json flag to terraform show (e.g., terraform show -json), it provides the state information in JSON format. This can be useful for machine-readable processing or automation.

5. State File Inspection: terraform show is particularly helpful when you want to inspect the Terraform state to understand what resources have been created, what attributes are set, and what changes have been applied to your infrastructure.

Overall, `terraform show` is a useful command for inspecting the current state of your infrastructure and resource configurations. It can help you verify that your Terraform-managed resources match your desired state and assist in debugging any discrepancies or issues in your infrastructure.

### terraform destroy
The terraform destroy command in Terraform is used to tear down and destroy the infrastructure resources that were created and managed by Terraform. It effectively reverses the changes made by previous terraform apply operations, allowing you to decommission and delete resources. 

```bash
terraform destroy
```

Here's an explanation of what terraform destroy does:

1. Resource Deletion: When you run terraform destroy, Terraform generates a plan to delete all the resources defined in your Terraform configuration. This includes resources like virtual machines, networks, storage, databases, and any other infrastructure components.

2. Execution Plan: Terraform creates an execution plan that outlines the sequence of resource deletions, taking dependencies into account. The plan specifies which resources will be destroyed and in what order.

3. Confirmation: By default, terraform destroy will prompt you to confirm that you want to proceed with the resource destruction. This confirmation step is important to prevent accidental deletions of critical resources.

4. Resource Cleanup: Terraform then begins the process of resource deletion, following the plan. It takes care of deleting resources in the correct order to ensure dependencies are managed properly.

5. State File Update: After successfully destroying resources, Terraform updates the Terraform state file (terraform.tfstate) to reflect the changes. The state file is updated to remove records of the destroyed resources.

6. Logging and Outputs: terraform destroy provides real-time logging and displays output messages to keep you informed about the progress and results of the destruction process. It also records a summary of the resources that were destroyed.

7. Parallelism: Terraform destroys resources in parallel when possible, improving the efficiency of the cleanup process. The level of parallelism can be adjusted using the -parallelism flag if needed.

8. Error Handling: If any errors occur during resource destruction, Terraform will report them and halt the destruction process to prevent incomplete or inconsistent deletions.

It's important to exercise caution when using `terraform destroy`, especially in production environments, as it will irreversibly remove resources. Proper testing and confirmation are crucial to avoid unintended data loss or service disruption.

Additionally, it's recommended to have a well-defined plan for infrastructure lifecycle management, including resource tagging, documentation, and backup strategies, before using terraform destroy to ensure that you can recover from the destruction of resources when necessary.