locals {
  instance_type = {
    default = "t2.micro"
    dev = "t2.micro"
    prod = "m5.large"
  }
}

resource "aws_instance" "my_ec2" {
  ami = "ami-05a67986ec8a2dcf8"
  instance_type = local.instance_type[terraform.workspace]
}