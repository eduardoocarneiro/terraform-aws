output "instance_public_ips" {
  value = aws_instance.server.*.public_ip
}

output "instance_private_ips" {
  value = aws_instance.server.*.private_ip
}

output "instance_names" {
  value = join(", ", aws_instance.server.*.tags.Name)
}