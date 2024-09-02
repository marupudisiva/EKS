variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "private_subnets" {
  description = "List of private subnet CIDRs"
  type        = list(string)
}

variable "public_subnets" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 instance type for the EKS nodes"
  type        = string
}

variable "desired_capacity" {
  description = "Desired number of EKS worker nodes"
  type        = number
}

variable "max_capacity" {
  description = "Maximum number of EKS worker nodes"
  type        = number
}

variable "min_capacity" {
  description = "Minimum number of EKS worker nodes"
  type        = number
}

variable "key_name" {
  description = "Key pair name for EC2 instances"
  type        = string
}

variable "tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
}
