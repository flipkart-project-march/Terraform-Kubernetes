variable "vpc_cidr_block" {
  type        = string
  description = "description"
}

variable "vpc_name" {
  type        = string
  description = "The name of the VPC"
  default     = "k8s-vpc"
}

variable "public_subnet_cidr" {
  type        = string
  description = "CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "public_subnet_az" {
  type        = string
  description = "Availability zone for the public subnet"
  default     = "us-east-1b"
}

variable "region" {
  type        = string
  description = "AWS region to deploy resources"
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
}

variable "private_subnet_az" {
  description = "The availability zone for the private subnet"
  type        = string
}

