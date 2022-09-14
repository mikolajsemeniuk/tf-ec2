terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }
}

provider "aws" {
    profile = "default"
    region = "eu-central-1"
}

resource "aws_instance" "ec2demo" {
    ami = "ami-0e2031728ef69a466"
    instance_type = "t2.micro"
}