variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "public_subnet_az" {
  description = "Availability zone for the public subnet"
  type        = string
}
variable "vpc_id" {
  description = "ID of the VPC where the public subnet will be created"
  type        = string
}
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}