provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2_instance" {
  ami           = "ami-05b10e08d247fb927"  # Amazon Linux 2 AMI ID (Change as needed)
  instance_type = "t2.micro"  
  tags = {
    Name = "Terraform-EC2 "
  }
}