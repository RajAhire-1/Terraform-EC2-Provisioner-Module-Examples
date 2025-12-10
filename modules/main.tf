terraform {
  backend "s3" {
    bucket = "terraform-backend-s3-bucket326"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "module_instance" { # third server
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key

  tags = {
    Name = "module-instance"
  }
}
