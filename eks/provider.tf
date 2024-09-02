provider "aws" {
  region = var.region
  access_key = var.aws_access_key # optional if using environment variables
  secret_key = var.aws_secret_key # optional if using environment variables
}