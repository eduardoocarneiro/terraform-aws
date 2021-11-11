# Arquivo de outputs que diz o que sera mostrado na tela ao final da execucao do "terraform apply"
output "remote_state_bucket" {
  value = aws_s3_bucket.remote_state.bucket
}

output "remote_state_bucket_arn" {
  value = aws_s3_bucket.remote_state.arn
}