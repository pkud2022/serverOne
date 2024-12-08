terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-02141377eee7defb9"
  instance_type = "t3.micro"

  tags = {
<<<<<<< HEAD
    Name = "ServerOne"
=======
    Name = "Server2"
>>>>>>> ba84eb0c2e7f722c52ef1a1178f5bb6e90004d0b
  }
}


resource "aws_security_group" "security_group" {
  name          = "ssh-security-group"
  description   = "Allow SSH traffic"

  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

}