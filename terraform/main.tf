terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.5.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "devops_instance" {
  ami           = "ami-05f991c49d264708f"
  instance_type = "t3.micro"
  key_name      = "new-key"

  tags = {
    Name = "DevOpsAppServer"
  }
}

output "instance_public_ip" {
  value = aws_instance.devops_instance.public_ip
}
