terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">= 5.30"
    }
  }
}

provider "aws" {
    region = "eu-north-1"
  
}
resource "random_id" "rand_id" {
  byte_length = 8
  
}
resource "aws_s3_bucket" "main" {
    bucket = "tf-cloud-${random_id.rand_id.hex}"
  
}