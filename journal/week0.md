# Terraform Beginner Bootcamp 2023

## Table of contents

- [Semantic Versioning](#semantic-versioning)
- [Terraform CLI Install](#terraform-cli-install)
- [Work Env variables](#work-env-variables)
  * [Persiting env vars in gitpod](#persiting-env-vars-in-gitpod)
- [AWS CLI Installation](#aws-cli-installation)
- [Terraform  random module](#terraform--random-module)
  * [aws provider s3 bucket creation](#aws-provider-s3-bucket-creation)
  * [terraform gitpod login issue](#terraform-gitpod-login-issue)
  * [set up alias for terraform](#set-up-alias-for-terraform)

## Semantic Versioning
this project is going to use semantic  versioning
[semver.org](https://semver.org/)

The General format:
**MAJOR.MINOR.PATCH** , eg `1.0.1`

Given a version number **MAJOR.MINOR.PATCH**, increment the:

- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes

## Terraform CLI Install

- check os by command 

    ```bash 
    cat /etc/os-release
    ```
  [source](https://www.cyberciti.biz/faq/how-to-check-os-version-in-linux-command-line/)
- install terraform as per OS menetioned on
  [link](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- bin folder is created to save scripts and permission is changed to make it 
  executable

## Work Env variables
- env command can be used to display env varaibles
- customized env variables can be set using set <env variable>
- echo can be used to print env variable
- export can be used set varaible locally 
- env var  be set globally  by setting in bash profile

### Persiting env vars in gitpod

- env vars can be persisted in gitpod workspace  (git pod secrets)

```
gp env HELLO='world'

```
- This will ensure env variable is set for all future workspace globally 

- env variable can be also stored in gitpod.yaml for non-sensitive information


## AWS CLI Installation

- created new bash script for aws cli installation
- to check aws identity/credentails configuration

```sh
aws sts get-caller-identity
{
    "UserId": "AIDAQ3EGVS5YQJLMOVXIA",
    "Account": "124234291239",
    "Arn": "arn:aws:iam::124234291239:user/iamadmin"
}
```
- export is used to set the the aws access

## Terraform  random module
- [terraform registry](https://registry.terraform.io/) is for identifying the providers and respective modules
- [random module](https://registry.terraform.io/providers/hashicorp/random/latest) can be used to test the terraform 
- following commands are used for implemnation
```tf
terraform init
terraform plan
terraform apply
terraform validate
terrafrom destroy
```
- init is used for initating the provider
- plan will indicate what changes will happen
- apply will implement the changes

### aws provider s3 bucket creation

- configure aws provider
- all the providers should be present in single block 
- edit the random provider as per requirement of s3 bucket name
- configure the [s3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) resource 

### terraform gitpod login issue
- create file manually
```bash
touch /home/gitpod/.terraform.d/credentials.tfrc.json
open /home/gitpod/.terraform.d/credentials.tfrc.json
```
- Obtain token from [site](https://app.terraform.io/app/settings/tokens?source=terraform-login)
- Configure tf file with following code to connect terraform cloud
```hcl
terraform {
  cloud {
    organization = "<orgname>"

    workspaces {
      name = "<workspacename>"
    }
  }
}
```

- In Gitpod dashboard, go to Settings > Variables
   Add a new variable:

  Name: TF_TOKEN_app_terraform_io
  Value: Your Terraform Cloud API token

### set up alias for terraform
- edit bash profile and create alias
```bash
open ~/.bash_profile
# add alias tf="terraform"
source ~/.bash_profile
```

- created tfalias script to ensure alias works for every session
- check workflow

##3 fix tf login for AWS
- configure region in provider
- configure AWS secret and access key as variable on terraform console
