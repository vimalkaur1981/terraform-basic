provider "aws" {
    region = ap-southeast-1

}
data "local_file" "foo" {
    filename = "${path.module}/66-demofile.txt"  
}

output "data" {
  value = data.local_file.foo.content
}

data "aws_instance" "ec2_instances" {
    filter {
        name = "tag.Team"
        values = ["Production"]
    }
  
}