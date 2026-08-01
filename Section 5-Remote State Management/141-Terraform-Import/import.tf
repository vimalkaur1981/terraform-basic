provider "aws" {
    region = "ap-southeast-1"  
}

import {
    to = aws_security_group.mysg
    id = "sg-0bcba9def08c57371"
}