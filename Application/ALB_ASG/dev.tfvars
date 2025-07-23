## ALB
name     = "fqts-alb"
alb_name = "fqts-alb"
internal = false

security_groups = ["sg-0640df8db79727a94"]
subnets         = ["subnet-0240a86a8ee3c206d", "subnet-0422e709e4abb0569"]
vpc_id          = "vpc-0b5257a147240a7c2"

enable_deletion_protection = false

listener_port     = 80
listener_protocol = "HTTP"

# Health check for backend target group
health_check_path                = "/"
health_check_interval            = 30
health_check_timeout             = 5
health_check_healthy_threshold   = 2
health_check_unhealthy_threshold = 2
health_check_enabled             = true

tags = {
  Environment = "dev"
  CreatedBy   = "Terraform"
  Name        = "myproject-dev-app"
}

## ASG
vpc_zone_identifier    = ["subnet-0240a86a8ee3c206d", "subnet-0422e709e4abb0569"]
desired_capacity       = 1
min_size               = 1
max_size               = 3
instance_profile_name  = "Punam-fqts-proj3-iam-role-profile"
ami_id                 = "ami-0cb12fbb821e39b1a"
instance_type          = "t2.medium"
asg_name               = "asg-alb-target-tracking"
project_name           = "myproject"
target_cpu_utilization = 70
