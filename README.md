# Terraform Beginner Bootcamp 2023

## Semantic Versioning 2.0.0 :mage:

This project is going to utlize semantic versioning for its tagging.

The general format:

- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes

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
terraofrm apply -auto-approve
terraform output
```

