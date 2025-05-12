module "alb" {
  source = "../../modules/ALB/V0"

  name                       = var.name
  internal                   = var.internal
  security_groups            = var.security_groups
  subnets                    = var.subnets
  vpc_id                     = var.vpc_id
  target_group_name          = var.target_group_name
  target_group_port          = var.target_group_port
  target_group_protocol      = var.target_group_protocol
  enable_deletion_protection = var.enable_deletion_protection
  tags                       = var.tags

  # health check passed from here (nothing hardcoded in module)
  health_check_enabled             = var.health_check_enabled
  health_check_path                = var.health_check_path
  health_check_interval            = var.health_check_interval
  health_check_timeout             = var.health_check_timeout
  health_check_healthy_threshold   = var.health_check_healthy_threshold
  health_check_unhealthy_threshold = var.health_check_unhealthy_threshold
  health_check_matcher             = var.health_check_matcher
}
