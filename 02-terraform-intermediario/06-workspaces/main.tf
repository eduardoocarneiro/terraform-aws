#####################################################
### Bloco principal do Terraform com os providers ###
### e versoes utilizadas no projeto               ###
#####################################################
terraform {
  required_version = "1.0.10"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.64.2"
    }
  }

  backend "s3" {
    bucket         = "tfstate-366296078794"
    key            = "06-workspaces/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tflock-tfstate-366296078794"
  }
}

provider "aws" {
  region = lookup(var.aws_region, local.env)
}

locals {
  env = terraform.workspace == "default" ? "dev" : terraform.workspace
}

resource "aws_instance" "web" {
  count         = lookup(var.instance, local.env)["number"]
  ami           = lookup(var.instance, local.env)["ami"]
  instance_type = lookup(var.instance, local.env)["type"]

  tags = {
    Name = "My desktop machine ${local.env}"
    Env  = local.env
  }
}