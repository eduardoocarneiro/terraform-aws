#################################################
### Arquivo com as saidas que serao mostradas ###
### na tela ao final do "terraform apply"     ###
#################################################
output "remote_state_bucket" {
  value = aws_s3_bucket.remote_state.bucket
}

output "remote_state_bucket_arn" {
  value = aws_s3_bucket.remote_state.arn
}