terraform {
  required_version = "1.0.10"

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
}

provider "aws" {
  region = var.aws_region
}