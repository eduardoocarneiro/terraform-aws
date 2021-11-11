# Parametro data, utilizado para buscar algo da AWS (contrario ao resource que injeta algo na AWS).
data "aws_caller_identity" "current" {}

# Criando o bucket onde ficara nosso arquivo tfstate
resource "aws_s3_bucket" "remote_state" {
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"

  # Habilitando o versionamento no bucket
  versioning {
    enabled = true
  }

  tags = {
    Description = "Stores Terraform remote state files"
    ManagedBy   = "Terraform"
    Owner       = "Eduardo Carneiro"
    CreatedAt   = "10-11-2021"
  }
}
