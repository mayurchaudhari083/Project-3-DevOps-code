variable "name" {}
variable "internal" { type = bool }
variable "security_groups" { type = list(string) }
variable "subnets" { type = list(string) }
variable "vpc_id" {}
variable "target_group_name" {}
variable "target_group_port" {}
variable "target_group_protocol" {}
variable "enable_deletion_protection" { type = bool }
variable "tags" { type = map(string) }

# Health check variables
variable "health_check_enabled" { type = bool }
variable "health_check_path" {}
variable "health_check_interval" { type = number }
variable "health_check_timeout" { type = number }
variable "health_check_healthy_threshold" { type = number }
variable "health_check_unhealthy_threshold" { type = number }
variable "health_check_matcher" {}
variable "application_instance" {
  description = "ID of the EC2 instance to attach to the target group"
  type        = string
}




