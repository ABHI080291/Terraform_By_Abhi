**Multi-Provider in one Terraform File**
    
    terraform {
      required_providers {
        aws = {
          source  = "hashicorp/aws"
          version = "~> 5.0"
        }
        azurerm = {
          source  = "hashicorp/azurerm"
          version = "~> 3.0"
        }
        google = {
          source  = "hashicorp/google"
          version = "~> 4.0"
        }
      }
    }
    
    # AWS Provider
    provider "aws" {
      region = "us-east-1"
    }
    
    # Azure Provider
    provider "azurerm" {
      features {}
    }
    
    # GCP Provider
    provider "google" {
      project = "your-gcp-project-id"
      region  = "us-central1"
      credentials = file("path/to/your-gcp-key.json")
    }
    
    # AWS Resource
    resource "aws_s3_bucket" "aws_bucket" {
      bucket = "my-multicloud-aws-bucket"
    }
    
    # Azure Resource
    resource "azurerm_resource_group" "azure_rg" {
      name     = "multi-cloud-rg"
      location = "East US"
    }
    
    # GCP Resource
    resource "google_storage_bucket" "gcp_bucket" {
      name     = "my-multicloud-gcp-bucket"
      location = "US"
    }
