# Application_EC2
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

# ALB
output "alb_arn" {
  value = module.alb.lb_arn
}

output "alb_dns_name" {
  value = module.alb.lb_dns_name
}

output "target_group_arn" {
  value = module.alb.target_group_arn
}
