# TERRAFORM TEMPLATE
## _How-to Guide_

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

Terraform is a IaC tool to manage infrastructure between many common Cloud Providers,
such as Azure, AWS, Google Cloud Platfform and others.

> This repository has the only use for managing 'SUPER ENSINO' AWS account and it's resources 

## Features

- Create AWS resources
- Destroy AWS resources
- Environment parity
- Version Controlling the Infrastructure

## Dependencies
- Terraform CLI
- AWS User Account with Admin Credentials (Programatic Access)

## Installation

To use Terraform, make sure you have the CLI installed, or prefferable, the TFEnv tool.
| Document | Link
| ------ | ------ |
| TERRAFORM DOCUMENTATION | https://www.terraform.io/downloads.html | 
| TFEENV DOCUMENTATION | https://github.com/tfutils/tfenv |

> Always remenber to `git pull` to keep your local repository updated to the AWS account!

After installing the CLI, run:

```sh
terraform init
```

## Usage

``` sh
source ./loadenv
terraform plan -out=$(tfplandir)
terraform apply $tflastplan -auto-approve -backend=true -backend-config=bucket=$(tfbucket)
```
## License

MIT

**Free Software, Hell Yeah!**
