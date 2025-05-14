name                       = "my-alb"
internal                   = false
security_groups            = ["sg-0a2b79b94d4b38288"]
subnets                    = ["subnet-0034c59563dfabecd", "subnet-0006ead7048785ec8"]
vpc_id                     = "vpc-09f6fc08d2689b3f0"
target_group_name          = "fqts-target-group"
target_group_port          = 80
target_group_protocol      = "HTTP"
enable_deletion_protection = false

health_check_enabled             = true
health_check_path                = "/"
health_check_interval            = 30
health_check_timeout             = 5
health_check_healthy_threshold   = 2
health_check_unhealthy_threshold = 2
health_check_matcher             = "200-399"

tags = {
  Environment = "dev"
  CreatedBy   = "Terraform"
}
