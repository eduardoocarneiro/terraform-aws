#####################################################
### Bloco principal do Terraform com os providers ###
### e versoes utilizadas no projeto               ###
#####################################################
terraform {
  required_version = "1.0.10"

  required_providers {
    # Provider da AWS
    aws = {
      source  = "hashicorp/aws"
      version = "3.64.2"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}