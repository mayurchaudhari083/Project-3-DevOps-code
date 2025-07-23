variable "name" {}
variable "internal" { type = bool }
variable "security_groups" { type = list(string) }
variable "subnets" { type = list(string) }
variable "vpc_id" {}
variable "enable_deletion_protection" { type = bool }
variable "tags" { type = map(string) }
variable "listener_port" {
  type = number
}

<<<<<<< HEAD
variable "listener_protocol" {
  type = string
}

variable "health_check_path" {
  type = string
}

variable "health_check_interval" {
  type = number
}

variable "health_check_timeout" {
  type = number
}

variable "healthy_threshold" {
  type = number
}

variable "unhealthy_threshold" {
  type = number
}

variable "alb_name" {
  type = string
}
variable "health_check_enabled" {
  type = bool
}
=======
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




>>>>>>> be0342becaaa3a6779377983fef992cc55f335af
