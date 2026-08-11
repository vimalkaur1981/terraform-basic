variable "instance_type" {      
}

data "aws_ec2_instance_type" "type" {
    instance_type = var.instance_type  
}
resource "aws_instance" "my_ec2" {
  ami = "ami-05a67986ec8a2dcf8"
  instance_type = var.instance_type

  lifecycle {
    precondition {
      condition = data.aws_ec2_instance_type.type.free_tier_eligible
      error_message = "Instance type is not part of free tier"
    }

     postcondition {
      condition = self.public_dns == ""
      error_message = "Public IPV4 or DNS is mandatory for this server"
    }
  }

}

