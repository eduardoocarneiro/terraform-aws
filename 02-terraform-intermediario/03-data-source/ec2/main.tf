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

  backend "s3" {
    bucket = "tfstate-968339500772"
    key    = "dev/03-data-sources-s3/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.aws_region
}