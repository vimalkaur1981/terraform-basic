locals {
    common_tags = {
        Team = "security_team"
        CreationDate = formatdate("DD MM YY", timestamp())
    }
  
}

resource "aws_security_group" "sg_01" {
    name = "app-firewall"
    tags =  local.common_tags
}

resource "aws_security_group" "sg_02" {
    name = "db-firewall"
   tags =  local.common_tags 
}