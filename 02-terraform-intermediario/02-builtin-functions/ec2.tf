  # Controlando o numero de instancias atraves do count do Terraform
  # Se o numero for menor ou igual a zero, marca como zero
  # Se o numero for maior que zero, seta o valor que for passado
resource "aws_instance" "server" {
  count = local.instance_number <= 0 ? 0 : local.instance_number

  ami           = var.instance_ami
  instance_type = lookup(var.instance_type, var.env)

  tags = merge(
    local.common_tags,
    {
      Project = "Curso AWS com Terraform"
      Env     = format("%s", var.env)
      Name    = format("Instance %d", count.index + 1)
    }
  )
}