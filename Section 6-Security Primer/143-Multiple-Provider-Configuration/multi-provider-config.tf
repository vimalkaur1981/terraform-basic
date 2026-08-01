provider "aws" {
    region = "ap-southeast-1"  
}

provider "aws" {
    alias = "mumbai"
    region = "ap-south-1"
}

provider "aws" {
    alias = "usa"
    region = "us-east-1"
}

resource "aws_security_group" "sg-1" {
    name = "prod_firewall"
    provider = aws.mumbai
}

resource "aws_security_group" "sg-2" {
    name = "staging_firewall"
    provider = aws.usa
}

