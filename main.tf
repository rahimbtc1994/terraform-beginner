terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

# Create a EC2
resource "aws_instance" "my-first-server" {
  ami           = "ami-08b5b3a93ed654d19"
  instance_type = "t2.micro"
}
