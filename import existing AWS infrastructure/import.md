
**1. Set up Terraform and AWS CLI**

Make sure:

    Terraform is installed: terraform -v

    AWS CLI is configured: aws configure

**2. Create a Terraform configuration file**

Create a .tf file with a stub for the resource you want to import. Example for an EC2 instance:

    provider "aws" {
      region = "us-east-1"
    }
    
    resource "aws_instance" "ec2_example" {
      # Leave this empty for now; Terraform will fill it after import
    }

    Save this as something like main.tf.

**3. Initialize Terraform**

Run this in the same folder as your .tf file:

    terraform init

**4. Run the import command**

Syntax:

    terraform import <resource_type>.<resource_name> <resource_id>

For EC2:

    terraform import aws_instance.ec2_example i-016b0efe1f7a818d7

    Make sure the resource name (ec2_example) matches the name in your .tf file.

**5. Check the Terraform state**

After a successful import, run:

    terraform show

This will show the current state of the imported resource.
**6. Populate the .tf file**

Terraform only updates the state file — it does not auto-generate the configuration. So, now you need to:

    Manually copy the resource attributes from terraform show

    Or use a tool like Terraformer to generate .tf files automatically

Example:

    resource "aws_instance" "ec2_example" {
      ami           = "ami-0c55b159cbfafe1f0"
      instance_type = "t2.micro"
      subnet_id     = "subnet-xxxxxxxx"
      # ... add other required fields
    }

7. Run a Terraform plan

terraform plan

Make sure Terraform doesn’t try to recreate the instance. If it does, adjust your .tf file to match the actual resource settings.
