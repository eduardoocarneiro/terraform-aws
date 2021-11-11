# Arquivo locals do Terraform. Utilizado para centralizar uma informacao utilizada varias vezes dentro do codigo
locals {
  ip_filepath = "ips.json"

  common_tags = {
    Service     = "Curso terraform"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Eduardo Carneiro"
  }
}