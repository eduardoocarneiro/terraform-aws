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
  region = "us-east-1"
}

resource "random_pet" "this" {
  length = 2
}

module "bucket" {
  source = "./s3_module"
  name   = random_pet.this.id
}