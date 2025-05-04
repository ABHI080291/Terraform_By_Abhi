**🌍 Terraform Modules **

**What is a Terraform Module?**

A Terraform module is a container for multiple resources that are used together. A module is simply a .tf configuration file or a set of configuration files in a directory.

There are two types of modules:

    Root Module: The configuration files in the main working directory.

    Child Module: A module called by another module (can be local or remote).

**Why Use Modules in Terraform?**

Feature	Benefit

1) Reusability	Write code once and reuse in multiple places.
2) Maintainability	Easier to manage changes and updates.
3) Organization	Cleaner and more modular structure.
4) Scalability	Use for large infrastructure with repeatable patterns.
5) Collaboration	Share modules across teams with version control.

    🔁 Real-world example: A company uses the same VPC setup across environments (dev, staging, prod). Instead of rewriting the VPC code every time, they use a VPC module.

**How to Use Terraform Modules**

📁 Module Folder Structure

    project/
    │
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
    └── modules/
        └── ec2-instance/
            ├── main.tf
            ├── variables.tf
            └── outputs.tf


**Real-Time Use Cases of Terraform Modules**

Use Case	Description

    🏗️ VPC Setup	Reuse the same VPC module across all AWS accounts or regions.
    🧑‍💻 EC2/VM provisioning	Use a standardized EC2 module with custom variables like AMI or type.
    🌐 Multi-Environment Setup	Separate modules for dev, staging, and prod with different input values.
    📦 Infrastructure as Product	Create reusable and shareable modules (e.g., published on Terraform Registry).
    🚀 CI/CD Pipelines with Terraform	Call modules for environment creation in GitOps workflows.

** Visual Explanation**

![Module](https://github.com/user-attachments/assets/c9e3eb74-552a-4818-89e8-c1905e064e0d)
