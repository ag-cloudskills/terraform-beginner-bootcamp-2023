# Terraform Beginner Bootcamp 2023

## Semantic Versioning 2.0.0 :mage:

This project is going to utlize semantic versioning for its tagging.

The general format:

- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes

### Simple Github code update flow

#### Issue
    - Open Issue and describe the issue
    - Select Label of the issue : BUG, Documentation , enhancement 
    - Create new branch on issue after the issue is submitted

#### Branch 
    - Fix/Update/Add new code in the Branch
    - Update Doco as needed
    - commit changes and synch if branch is remote
    - make sure to include the issue number (#) provided when creating the issue

#### Merge
    - Validate all work was done in issue page
    - go to pull requests , create a new pull requests from branch to main
    - Verfiy diffs 
    - Add comments from issue in pull request
    - squash and merge

#### Verify
    - Verify change is correct in maon
    - Verify that issue is closed
    - Add tag as ncessary
    - Delete Branch if needed


### Install the Terraform CLI

[Install Terraform CLI](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

### gitpod lifecycle ( Before, Init, Command)

[gitpod lifecycle](https://www.gitpod.io/docs/configure/workspaces/tasks)

### Working With Envars

- List all the enviornmet avariables using vars and can filter it via grep.
- Then we can call system defined variable in the bash script.
- We can define env variable in bash script or we can export varaible in the terminal

#### Persisting Env Vars in GitPod

```
gp env HELLO='world'
```

### AWS CLI Installation

added bash script for aws cli installation

[AWS CLI Install link](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html#getting-started-install-instructions)

#### Validate AWS Configuration

```sh

aws sts get-caller-identity

```

This command will validate the Aws cloud connection


If it is successful , it will give json output

```json
{
    "UserId": "AIDAW2HYRG5TXX7JJY72X",
    "Account": "468672657255",
    "Arn": "arn:aws:iam::468672657255:user/iamdamin"
}
```
#### Set AWS env vars

[AWS env vars](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html)
Everytime Credentials need to be configure for each gitpod enviornment 

```bash
gp env AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
gp env AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
gp env AWS_DEFAULT_REGION=us-west-2
```

### Terraform basics


- init command is to initate the terraoform and it is run once only
- plan command is used to preview the changes that will happen and it will help to identify the problems in code
- apply command is used to build the resources 
- auto-approve will ensure that resources are build without asking for approval 
-output command will give the output of the code

```tf
terraform init
terraform plan
terraform apply
terraform apply -auto-approve
terraform output
```

### Creating S3 bucket

- Configure aws provider , multiple providers are defined in a single block, here is an example of same
```tf
terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.26.0"
   }
 }
}

```
### Migrating tf state file in Terraform cloud

- Create the organization and workspace in terraform [cloud](https://app.terraform.io/)
- [Configure](https://developer.hashicorp.com/terraform/tutorials/cloud/cloud-migrate) the organisation and workspace
- Generate the [token](https://app.terraform.io/app/settings/tokens?source=terraform-login) and [configure](https://app.terraform.io/app/settings/tokens?source=terraform-login) the token
- [Initialize] (https://app.terraform.io/app/settings/tokens?source=terraform-login) the credentials 

### Alias added for the terraform 

- tf alias is added for ease of running the command
- it is important to souce the script in gitpod.yml which ensures that alias 
  is applicable for the new workspace
- in the script , it is important that Shebang is configured prpoerly as pert gitpod requirment

```bash
#!/usr/bin/env bash
```
- Also, following command may not work if it is run directly from the script as it requires interactive mode, but gitpod can run it without any issues
```bash  
source ~/.bash_profile
 ```

### Fixing terraform cloud credentials

- check gp environment variable 
 ```bash
   gp env
 
 ```  
- check [token](https://app.terraform.io/app/settings/tokens?source=terraform-login) is not expired, if token is expired , generate the new token and configure it 
```bash
gp env TF_CLOUD_TOKEN ='value'
```
