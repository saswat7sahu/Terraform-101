terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
#specify the region want to create the ec2 instances
provider "aws" {
  region = "us-east-1"
}