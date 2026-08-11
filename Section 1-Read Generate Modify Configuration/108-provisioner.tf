resource "aws_instance" "my_ec2" {
  ami = "ami-05a67986ec8a2dcf8"
  instance_type = "t2.micro"
  key_name = "ec2-key"
  vpc_security_group_ids = ["sg-016f1a5acc2429601"]

    provisioner "local-exec" {
        command = "echo ${self.public_ip} >> server_ip.txt"    
    }
     provisioner "local-exec" {
        command = "echo ec2 is destroyed"   
        when = destroy 
    }

    connection {
        type = "ssh"
        private_key = file("./ec2-key.pem")
        host = self.public_ip
        user = "ec2-user"
    }

    provisioner "remote-exec" {
        inline = [
            "sudo yum -y install nginx",
            "sudo systemctl start nginx",
        ]
    }
}


