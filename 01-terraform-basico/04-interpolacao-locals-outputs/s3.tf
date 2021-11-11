# Criando o bucket S3 na Amazon
resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  # buscando as tags do arquivo variables.tf
  tags = local.common_tags
}

# Fazendo upload do arquivo ips.json (ver arquivo locals.tf) no bucket criado acima
resource "aws_s3_bucket_object" "this" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${local.ip_filepath}"
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  tags         = local.common_tags
  content_type = "application/json"
}

# Criando um outro objeto, dessa vez com um nome em md5
resource "aws_s3_bucket_object" "random" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${random_pet.bucket.id}.json"
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  tags         = local.common_tags
  content_type = "application/json"
}