resource "aws_security_group" "my_sg" {
  name = "sg01"
  description = "created thru terraform"
}

resource "aws_vpc_security_group_ingress_rule" "inbound_sg" {
  security_group_id = aws_security_group.my_sg.id
  to_port = 80
  ip_protocol = "tcp"
  from_port = 80
  cidr_ipv4 = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "outbound_sg" {
  security_group_id = aws_security_group.my_sg.id
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "-1"
}