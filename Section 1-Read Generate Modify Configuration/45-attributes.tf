resource "aws_eip" "public_ip" {
    domain = "vpc"  
}

resource "aws_instance" "my_ec2" {
  ami = "ami-05a67986ec8a2dcf8"
  instance_type = "t2.micro"
}