#####################################################
### Bloco principal do Terraform com os providers ###
### e versoes utilizadas no projeto               ###
#####################################################
terraform {
  required_version = "1.0.10"

  # Providers requeridos no projeto.
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.64.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }

  # Backend onde ficara o nosso arquivo tfstate, no nosso caso o S3.
  backend "s3" {
    bucket = "tfstate-366296078794"
    key    = "01-usando-remote-state/terraform.tfstate"
    region = "us-east-1"
  }
}

# Declarando a regiao a ser utilizada
provider "aws" {
  region = var.aws_region
}
