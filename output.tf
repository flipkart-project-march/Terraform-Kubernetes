output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "description"
}

output "public_subnet_id" {
  value       = module.vpc.public_subnet_id
  description = "ID of the public subnet"
}