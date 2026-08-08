resource "aws_eip" "my_eip" {
    domain = "vpc"  
}
output "public_ip" {
  value = "http://${aws_eip.my_eip.public_ip}:8080"
}