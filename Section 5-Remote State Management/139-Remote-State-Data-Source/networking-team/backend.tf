terraform {
   backend "s3" {
    bucket = "vimal-network-bucket"
    key = "eip.tfstate"
    region = "us-east-1"     
   }
}