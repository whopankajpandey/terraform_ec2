terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.0.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myinstance" {
  ami           = "ami-06640050dc3f556bb"
  instance_type = "t2.medium"
  key_name      = "Terraform"
  tags = {
  Name = "terraform-ec2"
  }
}
