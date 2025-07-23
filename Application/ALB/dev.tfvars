name                       = "fqts-alb"
internal                   = false
<<<<<<< HEAD
security_groups            = ["sg-0640df8db79727a94"]
subnets                    = ["subnet-0240a86a8ee3c206d", "subnet-0422e709e4abb0569"]
vpc_id                     = "vpc-0b5257a147240a7c2"
target_group_name          = "punam-fqts-target-group"
=======
security_groups            = ["sg-0a45400781a2121ce"]
subnets                    = ["subnet-0240a86a8ee3c206d"]
vpc_id                     = "vpc-0b5257a147240a7c2"
target_group_name          = "fqts-target-group"
>>>>>>> be0342becaaa3a6779377983fef992cc55f335af
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

<<<<<<< HEAD
#application_instance = "i-086c62bd93227044a" # <-- replace with actual EC2 instance ID
=======
application_instance = "i-086c62bd93227044a" # <-- replace with actual EC2 instance ID
>>>>>>> be0342becaaa3a6779377983fef992cc55f335af

tags = {
  Environment = "dev"
  CreatedBy   = "Terraform"
}
