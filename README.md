# terraform-beginner

## AWS setup
Already done

## Windows setup
Already done

## Vscode cfg
Already done 

## Overview
terraform init
terraform plan
terraform apply

## Changing
terraform plan
terraform apply

## Deleting
terraform destory

or comment the code 
terraform plan
terraform apply

## Referencing

## Project

# 1. Create vpc
# 2. Create Internet Gateway : An Internet Gateway connects the VPC to the internet.
# 3. Create Custom Route Table : A route table contains rules (routes) that determine how traffic is directed within the VPC.
# 4. Create a Subnet : A subnet is a smaller portion of the VPC’s IP range where we place AWS resources (like the EC2 instances).
# 5. Associate subnet with Route Table : This links the subnet with the custom route table.
# 6. Create Security Group to allow port 22,80,443 : A security group is a virtual firewall that controls inbound and outbound traffic.
# 7. Create a network interface with an ip in the subnet that was created in step 4 : An Elastic Network Interface (ENI) is a virtual network card that allows an EC2 instance to connect to the VPC.
# 8. Assign an elastic IP to the network interface created in step 7 : An Elastic IP is a static IPv4 address that AWS allocates for your account.
# 9. Create Ubuntu server and install/enable apache2

[Issue] 
aws_eip.one: Creation complete after 6s [id=eipalloc-05fde7cc2eff2c14b]
╷
│ Error: creating EC2 Instance: operation error EC2: RunInstances, https response error StatusCode: 400, RequestID: 25e37e57-d390-4d84-805d-75630f472944, api error InvalidKeyPair.NotFound: The key pair 'main-key' does not exist
│
│   with aws_instance.web-server-instance,
│   on main.tf line 168, in resource "aws_instance" "web-server-instance":
│  168: resource "aws_instance" "web-server-instance" {

[Solution] : create an EC2 key pair.

to connect to the EC2 instance : > ssh -i "\pathto\main-key.pem" ubuntu@ip