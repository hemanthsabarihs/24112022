# Terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Provider Block
provider "aws" {
  region  = "us-east-2"
}

# Create a EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-0d5bf08bc8017c83b" 
  instance_type = "t2.micro"
}