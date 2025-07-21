module "alb" {
  source = "../../Modules/ALB/V0"

  name                       = var.name
  alb_name                   = var.alb_name
  internal                   = var.internal
  security_groups            = var.security_groups
  subnets                    = var.subnets
  vpc_id                     = var.vpc_id
  enable_deletion_protection = var.enable_deletion_protection
  tags                       = var.tags

  listener_port     = var.listener_port
  listener_protocol = var.listener_protocol

  health_check_enabled  = var.health_check_enabled
  health_check_path     = var.health_check_path
  health_check_interval = var.health_check_interval
  health_check_timeout  = var.health_check_timeout
  healthy_threshold     = var.health_check_healthy_threshold
  unhealthy_threshold   = var.health_check_unhealthy_threshold
}

module "asg" {
  source = "../../Modules/ASG/V0"

  asg_name               = var.asg_name
  project_name           = var.project_name
  vpc_zone_identifier    = var.vpc_zone_identifier
  desired_capacity       = var.desired_capacity
  min_size               = var.min_size
  max_size               = var.max_size
  instance_profile_name  = var.instance_profile_name
  ami_id                 = var.ami_id
  instance_type          = var.instance_type
  target_cpu_utilization = var.target_cpu_utilization

  # ✅ Use output values from ALB module
  target_group_arns = [
    module.alb.frontend_target_group_arn,
    module.alb.backend_target_group_arn
  ]
}
