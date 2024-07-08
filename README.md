# Terraform Beginner Bootcamp 2023

## Semantic Versioning
This project is going to use semantic  versioning
[semver.org](https://semver.org/)

The General format:
**MAJOR.MINOR.PATCH** , eg `1.0.1`

Given a version number **MAJOR.MINOR.PATCH**, increment the:

- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes

** Terraform CLI Instal

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

#### Persiting env vars in gitpod

- env vars can be persisted in gitpod workspace  (git pod secrets)

```
gp env HELLO='world'

```
- This will ensure env variable is set for all future workspace globally 

- env variable can be also stored in gitpod.yaml for non-sensitive information