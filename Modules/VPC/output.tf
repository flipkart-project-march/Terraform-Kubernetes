output "vpc_id" {
  value       = aws_vpc.vpc.id
  description = "ID of the VPC"
}
output "public_subnet_id" {
  value       = module.public_subnet.public_subnet_id
  description = "List of public subnet IDs"
}
