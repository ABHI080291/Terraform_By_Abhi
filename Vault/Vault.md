**Terraform Vault Integration - Beginner Friendly Guide**

**📄 Introduction**

This document helps beginners understand how to integrate HashiCorp Vault with Terraform. Vault is used to securely store and access secrets, while Terraform is used to provision infrastructure as code. Together, they make infrastructure both automated and secure.

**🎓 What is Vault?**

Vault is a tool by HashiCorp that allows you to:

Store sensitive data like passwords, tokens, and API keys.

Control access to secrets using policies.

Automatically rotate secrets.


**📍 Why Integrate Vault with Terraform?
**
To avoid hardcoding secrets (like AWS keys) in Terraform code.

To fetch secrets securely from Vault during Terraform runs.

To improve security and automation.

**📑 Basic Architecture**

Here's a simple diagram to explain how Vault and Terraform work together:

![image](https://github.com/user-attachments/assets/6f79d835-858b-414e-880b-d6c0f581f2b1)


**Explanation:**

Terraform requests secrets from Vault.

Vault authenticates and provides the secrets.

Terraform uses these secrets to deploy infrastructure securely.

**📅 Prerequisites**

Basic knowledge of Terraform.

Vault server up and running (can be local or hosted).

AWS CLI configured (if using AWS).

**🔧 Step-by-Step Integration**

✅ Step 1: Start Vault Server (Dev Mode)

    vault server -dev

✅ Step 2: Set Vault Address and Token

    export VAULT_ADDR='http://127.0.0.1:8200'
    export VAULT_TOKEN='your-token-here'

✅ Step 3: Store Secrets in Vault

    vault kv put secret/aws access_key=AKIA... secret_key=abcd1234

✅ Step 4: Use Vault Provider in Terraform

    provider "vault" {
      address = "http://127.0.0.1:8200"
    }

✅ Step 5: Read Secrets from Vault

      data "vault_kv_secret_v2" "aws" {
        mount = "secret"
        name  = "aws"
      }
  
      output "aws_access_key" {
        value = data.vault_kv_secret_v2.aws.data["access_key"]
        sensitive = true
      }

**📊 Output**

After running terraform apply, you'll get your secret from Vault without hardcoding it!

**🛡️ Best Practices**

Never hardcode secrets.

Use Vault namespaces for better organization.

Use Terraform Cloud with Vault for secure automation.

Rotate secrets regularly using Vault features.

**📚 Conclusion**

By integrating Vault with Terraform, you can manage infrastructure securely and efficiently. This guide gives you a beginner-friendly path to start using them together.

Let me know if you want a live demo or need help setting up Vault on your system!

