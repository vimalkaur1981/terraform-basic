variable "env" {
  default = "dev"
}

resource "aws_instance" "my_ec2" {
  ami = "ami-05a67986ec8a2dcf8"
  instance_type = var.env == "dev" ?"t2.micro":"t2.large"
}