resource "aws_eip" "my_eip" {
    domain = "vpc"  
}

resource "aws_security_group" "my_sg" {
  name = "sg01"
  description = "created thru terraform"
}


resource "aws_vpc_security_group_ingress_rule" "https_sg" {
  security_group_id = aws_security_group.my_sg.id
  to_port = 443
  ip_protocol = "tcp"
  from_port = 443
  cidr_ipv4 = "${aws_eip.my_eip.public_ip}/32"
}

