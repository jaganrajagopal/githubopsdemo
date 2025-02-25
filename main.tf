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

//managing of s3 bucket of state files
terraform {
  backend "s3" {
    bucket         = "bucketsamplea"  # Replace with the S3 bucket name
    key            = "githubterraform"
    region         = "us-east-1"
    encrypt        = true
    #dynamodb_table = "terraform-state-locks"
  }
}