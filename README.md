# Terraform Test

This project is just a very basic training project for setup infrastructure with Terraform.

### Prerequisites

Before being able to execute this project, you should have the next prerequisites:

- Have Terraform installed
- Have an AWS account

### Before executing

Please copy file _credentials.auto.tfvars.sample_ and rename to _credentials.auto.tfvars_, adding your specific AWS access and secret keys to the new file. Those variables are going to be injected to the execution when Terraform plan is executed.

### Executing

For initializing your Terraform plan, please execute the next command:

    terraform init

For applying your configuration, please execute the following command:

    terraform apply
    
You will be asked before applying those changes, in case you want to proceed please type _yes_.

For destroying the created infrastructure, please execute the following command:

    terraform destroy
    
Remember that not destroying created infrastructure could end in some money charges.
