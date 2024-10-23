terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.35"
    }
  }
   backend "http" {}
}
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
