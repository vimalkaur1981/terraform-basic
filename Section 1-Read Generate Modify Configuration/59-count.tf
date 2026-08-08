resource "aws_instance" "myec2_instances" {
   ami = "ami-05a67986ec8a2dcf8"
   instance_type = "t2.nano"
   count = 3

   tags = {
        Name = "payment-${count.index}"
   }
}