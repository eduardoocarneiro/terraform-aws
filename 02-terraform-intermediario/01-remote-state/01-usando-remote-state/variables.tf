# Arquivo de variaveis utilizadas no projeto
variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-01cc34ab2709337aa"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}

variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}