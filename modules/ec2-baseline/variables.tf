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