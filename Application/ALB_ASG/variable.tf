## ALB
variable "name" {}
variable "alb_name" { type = string }
variable "internal" { type = bool }
variable "security_groups" { type = list(string) }
variable "subnets" { type = list(string) }
variable "vpc_id" {}
variable "enable_deletion_protection" { type = bool }
variable "tags" { type = map(string) }
variable "health_check_enabled" {
  type = bool
}
variable "listener_port" { type = number }
variable "listener_protocol" { type = string }

variable "health_check_path" { type = string }
variable "health_check_interval" { type = number }
variable "health_check_timeout" { type = number }
variable "health_check_healthy_threshold" { type = number }
variable "health_check_unhealthy_threshold" { type = number }

## ASG
variable "vpc_zone_identifier" { type = list(string) }
variable "desired_capacity" { type = number }
variable "min_size" { type = number }
variable "max_size" { type = number }
variable "instance_profile_name" { type = string }
variable "ami_id" { type = string }
variable "instance_type" { type = string }
variable "asg_name" { type = string }
variable "project_name" { type = string }
variable "target_cpu_utilization" { type = number }
