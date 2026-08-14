terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      configuration_aliases = [ aws.prod ]
    }
  }
}


resource "aws_instance" "my_ec2" {
  ami = var.ami
  instance_type = var.instance_type  
  provider = aws.prod
}

output "instance_id" {
  value = aws_instance.my_ec2.id
  
}
variable "ami" {}
variable "instance_type" {}
