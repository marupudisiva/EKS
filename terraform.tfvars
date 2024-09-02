# AWS region
region = "us-west-2"

# EKS cluster name
cluster_name = "my-eks-cluster"

# VPC CIDR block
vpc_cidr = "10.0.0.0/16"

# Private subnets CIDRs
private_subnets = [
  "10.0.1.0/24",
  "10.0.2.0/24",
  "10.0.3.0/24"
]

# Public subnets CIDRs
public_subnets = [
  "10.0.4.0/24",
  "10.0.5.0/24",
  "10.0.6.0/24"
]

# EC2 instance type for EKS nodes
instance_type = "t3.medium"

# Desired number of EKS worker nodes
desired_capacity = 2

# Maximum number of EKS worker nodes
max_capacity = 3

# Minimum number of EKS worker nodes
min_capacity = 1

# Key pair name for EC2 instances
key_name = "my-key-pair"

# Tags to be applied to resources
tags = {
  Environment = "dev"
  Owner       = "your-name"
}