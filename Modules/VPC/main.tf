resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}

module "public_subnet" {
  source             = "./PublicSubnet"
  vpc_id             = aws_vpc.vpc.id
  public_subnet_cidr = var.public_subnet_cidr
  public_subnet_az   = var.public_subnet_az
  vpc_name           = var.vpc_name
}

module "private_subnet" {
  source              = "./PrivateSubnet"
  vpc_id              = aws_vpc.vpc.id
  private_subnet_cidr = var.private_subnet_cidr
  private_subnet_az   = var.private_subnet_az
  vpc_name            = var.vpc_name
}