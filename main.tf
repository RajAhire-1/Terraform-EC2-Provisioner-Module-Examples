/* resource "aws_instance" "local-exec-instance" {
  ami = "ami-00ca570c1b6d79f36" # Example AMI ID
  instance_type = "t2.micro"
  key_name = "com"
  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> public_ip_address.txt"
  }
  tags = {
    Name = "local-exec-instance"
  }
}


*/
# provisioner File example
/*
resource "aws_instance" "file-provisioner-instance" {
ami = "ami-00ca570c1b6d79f36"
instance_type = "t2.micro"
key_name = "com"
 vpc_security_group_ids = ["sg-0a37b79491f0b20ed"] 
provisioner "file" {
 source = "public_ip_address.txt"
 destination = "/tmp/public_ip_address.txt"

 connection {
   type = "ssh"
   host = self.public_ip
   user = "ec2-user"
   private_key = file("C:/Users/Raj/Downloads/com.pem")
 }
  
}
}
resource "aws_instance" "server-1" { # first server
  ami           = "ami-00ca570c1b6d79f36"
  instance_type = "t2.micro"
  key_name      = "com"
  tags = {
    Name = "server-1"
  }
}
resource "aws_instance" "server-2" { # second server
  ami           = "ami-00ca570c1b6d79f36"
  instance_type = "t2.micro"
  key_name      = "com"
  tags = {
    Name = "server-2"
  }
}
resource "aws_instance" "server3" { # third server
  ami           = "ami-00ca570c1b6d79f36"
  instance_type = "t2.micro"
  key_name      = "com"
  tags = {
    Name = "server-3"
  }
}*/
module "ec2_instance" {
  source = "./modules"
}