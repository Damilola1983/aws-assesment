# variables
variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region for deployments"
}

variable "ami_name" {
  type        = string
  description = "AMI Name"
}

variable "public_key" {
  type        = string
  description = "public key"
}

variable "instance_type" {
  type        = string
  description = "instance type"
}

variable "environment" {}

