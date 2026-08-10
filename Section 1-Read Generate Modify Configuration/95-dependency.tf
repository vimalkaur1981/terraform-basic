resource "aws_instance" "my_ec2" {
  ami = "ami-05a67986ec8a2dcf8"
  instance_type = "t2.micro"
  depends_on = [ aws_s3_bucket.mybucket ]
}
resource "aws_s3_bucket" "mybucket" {
    bucket = "vk-demo-bucket-08102026" 
}