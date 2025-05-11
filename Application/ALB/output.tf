output "alb_arn" {
  value = module.alb.lb_arn
}

output "alb_dns_name" {
  value = module.alb.lb_dns_name
}

output "target_group_arn" {
  value = module.alb.target_group_arn
}
