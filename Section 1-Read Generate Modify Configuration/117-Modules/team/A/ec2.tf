provider "aws" {
    alias = "singapore"
  region = "ap-southeast-1"  
}

provider "aws" {
  region = "ap-south-1"
}

module "ec2" {
    source              =    "../../modules/ec2"
    ami                 =    "ami-05a67986ec8a2dcf8"
    instance_type       =    "t2.micro"
    providers = {
        aws.prod = aws.singapore
  }
    
}

resource "aws_eip" "my_eip" {
    domain = "vpc"
    instance = module.ec2.instance_id
    region = "ap-southeast-1"
    
}