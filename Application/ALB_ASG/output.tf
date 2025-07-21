## ALB_ASG

output "alb_arn" {
  value = module.alb.lb_arn
}

output "alb_dns_name" {
  value = module.alb.lb_dns_name
}

output "frontend_target_group_arn" {
  value = module.alb.frontend_target_group_arn
}

output "backend_target_group_arn" {
  value = module.alb.backend_target_group_arn
}
