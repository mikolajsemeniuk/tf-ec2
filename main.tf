provider "aws" {
  profile = "default"
  region = "eu-central-1"
}

resource "aws_instance" "ec2demo" {
  ami = "ami-0e2031728ef69a466"
  instance_type = "t3.micro"
  user_data = file("${path.module}/init.sh")
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = {
    "Name" = "EC2 Demo"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}