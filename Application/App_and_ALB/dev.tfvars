# Application EC2 value
ami                    = "ami-0554aa6767e249943"
instance_type          = "t2.micro"
vpc_security_group_ids = ["sg-0640df8db79727a94"]
key_name               = "Key-Pair-Punam"
project_name           = "project-3"
env                    = "dev"
unique_id              = "test-server"
iam_instance_profile   = "Punam-fqts-proj3-iam-role-profile"
subnet_id              = "subnet-0240a86a8ee3c206d"

# ALB value
alb_name                   = "fqts-alb"
internal                   = false
security_groups            = ["sg-0640df8db79727a94"]
subnets                    = ["subnet-0240a86a8ee3c206d", "subnet-0422e709e4abb0569"]
vpc_id                     = "vpc-0b5257a147240a7c2"
target_group_name          = "punam-fqts-target-group"
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
