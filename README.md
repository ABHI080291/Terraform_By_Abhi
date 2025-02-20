<img width="269" alt="image" src="https://github.com/user-attachments/assets/0662af3e-be7f-45c2-a465-a68d0761e297" />

**Step 1: Sign in to AWS Console**
Go to the AWS EC2 console, click "Launch Instance", and choose an Amazon Machine Image (AMI) like Ubuntu.
Select an instance type (e.g., t2.micro), configure a key pair for SSH access, and set up security group rules.
Click "Launch", wait for the instance to start, and the click on connect.
**
Step 2: Install Terraform on Ubuntu EC2 Instance**
follow Terraform document for installation - https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

**Step 3: Write Terraform Code to Create an EC2 Instance**

    Create a working directory

mkdir terraform-ec2 && cd terraform-ec2

Create a Terraform configuration file (main.tf)

nano main.tf

Add the following Terraform configuration:

provider "aws" {
  region = "us-east-1"  # Change to your preferred AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with your region’s Ubuntu AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}

Initialize Terraform

terraform init

Validate the Terraform configuration

terraform validate

Apply the Terraform plan to create the EC2 instance

    terraform apply -auto-approve

    Check the instance in AWS Console
        Go to EC2 Dashboard → Instances
        Look for an instance named Terraform-EC2

Step 3: Destroy the EC2 Instance (Optional)

If you want to remove the created instance:

terraform destroy -auto-approve
