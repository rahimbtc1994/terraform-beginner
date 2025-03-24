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
# resource "aws_instance" "my-first-server" {
#   ami           = "ami-08b5b3a93ed654d19"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "Ubuntu"
#   }
# }

# Create a VPC
resource "aws_vpc" "myfirst-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "production"
  }
}

# Create a Subnet
resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.myfirst-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prod-subnet"
  }
}
