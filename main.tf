terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}



provider "aws" {
  region = "us-west-2"
}


resource "aws_s3_bucket" "example" {
  bucket_prefix = "terraform-test-bucket-sylvain-test"

  force_destroy = true
}
