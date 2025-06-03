module "alb" {
  source = "../../Modules/ALB/V0"

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

  # Health check config
  health_check_enabled             = var.health_check_enabled
  health_check_path                = var.health_check_path
  health_check_interval            = var.health_check_interval
  health_check_timeout             = var.health_check_timeout
  health_check_healthy_threshold   = var.health_check_healthy_threshold
  health_check_unhealthy_threshold = var.health_check_unhealthy_threshold
  health_check_matcher             = var.health_check_matcher
  # Pass EC2 instance ID here
  application_instance = var.application_instance

}
# This is where the EC2 instance is attached
resource "aws_lb_target_group_attachment" "app_tg_attachment" {
  target_group_arn = aws_lb_target_group.this.arn
  target_id        = var.application_instance
  port             = 8080
}
