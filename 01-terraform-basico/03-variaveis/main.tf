# Setando o provider a ser usado
provider "aws" {
  region = var.aws_region
}

# Criando uma instancia EC2
resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.instance_tags
}