**Multiple Region in one Terraform file**

we need to configure multiple providers with aliases for each region.

        provider "aws" {
          alias = "us-east-1"
          region = "us-east-1"
        }
        
        provider "aws" {
          alias  = "us-west-2"
          region = "us-west-2"
        }
        
        resource "aws_instance" "name of instance" {
          ami = "ami-0123456789abcdef0"
          instance_type = "t2.micro"
          provider = "aws.us-east-1"
        }
        
        resource "aws_instance" "name of instance2" {
          ami = "ami-0123456789abcdef0"
          instance_type = "t2.micro"
          provider = "aws.us-west-2"
        }
