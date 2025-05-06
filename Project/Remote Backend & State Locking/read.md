**Steps to Lock Terraform State using S3 and DynamoDB:**

1) Create an S3 Bucket (for storing state).
2) Create a DynamoDB Table (for locking).
3) Configure backend in Terraform.
4) Initialize the Backend (terraform init).


**How It Works:**

    S3 bucket stores the actual Terraform state file.

    DynamoDB table locks the state file during operations like terraform plan/apply, preventing concurrent modifications.
    
