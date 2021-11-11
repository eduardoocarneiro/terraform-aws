# Setando o provider a ser usado
provider "aws" {
  region = "us-east-1"
}

# Criando um recurso do tipo bucket S3
resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-6265826582682"
  acl    = "private"

  tags = {
    Name        = "My first Terraform bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Eduardo Carneiro"
    UpdatedAt   = "2021-11-10"
  }
}