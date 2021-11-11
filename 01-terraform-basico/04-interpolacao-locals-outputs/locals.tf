###########################################
### Arquivo locals do Terraform.        ###
### Centraliza uma informacao utilizada ### 
### varias vezes dentro do codigo       ###
###########################################
locals {
  ip_filepath = "ips.json"

  common_tags = {
    Service     = "Curso terraform"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Eduardo Carneiro"
  }
}