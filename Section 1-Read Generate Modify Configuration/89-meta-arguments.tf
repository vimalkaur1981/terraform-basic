resource "aws_instance" "my_ec2" {
  ami = "ami-05a67986ec8a2dcf8"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }

  lifecycle {
    //ignore_changes = [ tags, instance_type ]
    ignore_changes = all
    create_before_destroy = true
    prevent_destroy = false
  }
}