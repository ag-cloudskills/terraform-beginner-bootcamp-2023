terraform {
  cloud {
    organization = "randomterraorg"

    workspaces {
      name = "terratown-1"
    }
  }
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.26.0"
   }
 }
}

provider "aws" {
  # Configuration options
}

provider "random" {
  # Configuration options
}

resource "random_string" "bucket_name" {
  length           = 32
  lower            = true
  upper            = false
  special          = false
}


resource "aws_s3_bucket" "example" {
  bucket = random_string.bucket_name.id

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


output "random_bucket_name" {
  value = random_string.bucket_name.id
}
