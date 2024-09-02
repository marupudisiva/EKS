terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  #  backend "s3" {
  #    bucket = "terraform-s301896"
  #    key    = "eks/terraform.tfstate"
  #    region = "us-east-1"
  #    dynamodb_table = "terraform-lock-table"
  #  }
}
