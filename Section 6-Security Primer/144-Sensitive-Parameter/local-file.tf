variable "password" {
    sensitive = true
    default = "passw0rd"
  
}

resource "local_file" "myfile" {
  content = var.password
  filename = "${path.module}/secrectpassword.txt"
}

resource "local_sensitive_file" "secretfile" {
    content = "supersecret"
    filename = "${path.module}/supersecrectpassword.txt"
  
}

//Cannot output sensitive information

/*output "content-1" {
    value = local_file.myfile.content
  
}

output "content-2" {
    value = local_sensitive_file.secretfile.content
  
}*/

//to show in output
output "content-2" {
    sensitive = true
    value = local_sensitive_file.secretfile.content
  
}

//some information is redacted by terraform though not specified as sensitive such as database password

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}