# Core do Terraform
terraform {
  required_version = "1.0.10"

  required_providers {
    # Provider da AWS
    aws = {
      source  = "hashicorp/aws"
      version = "3.64.2"
    }
    # Provider para randomizar nomes
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }
}

# Regiao a ser utilizada
provider "aws" {
  region = var.aws_region
}