output "instance_id" {
  description = "ID of the EC2 instance"
  value       = module.Application_EC2.instance_id
}

output "Private_ip" {
  description = "Private IP address"
  value       = module.Application_EC2.Private_ip
}

output "Public_ip" {
  description = "Public IP address"
  value       = module.Application_EC2.Public_ip
}
