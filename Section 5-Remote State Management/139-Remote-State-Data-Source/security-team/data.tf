data "terraform_remote_state" "vpc" {
    backend = "s3"

    config = {
        bucket = "vimal-network-bucket"
        key = "eip.tfstate"
        region = "us-east-1" 
    }  
}