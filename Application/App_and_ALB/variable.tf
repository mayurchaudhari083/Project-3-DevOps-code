## Application_EC2 variable
variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = null
}
variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro"
}
variable "vpc_security_group_ids" {
  description = "A list of security group IDs to associate with"
  type        = list(string)
  default     = null
}
variable "key_name" {
  description = "Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource"
  type        = string
  default     = null
}
variable "name" {
  description = "name of the instance."
  type        = string
  default     = null
}
variable "project_name" {
  description = "name of the project"
  type        = string
  default     = null
}
variable "env" {
  description = "env details"
  type        = string
  default     = null
}

variable "unique_id" {
  description = "unique_id "
  type        = string
  default     = null
}
variable "iam_instance_profile" {
  type        = string
  description = "The name of the IAM instance profile to associate with the instance"
}
variable "subnet_id" {
  type    = string
  default = null
}

## ALB 
variable "alb_name" {}
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

# Pass instance ID of EC2
# variable "application_instance" {
#   description = "ID of the EC2 instance to register with the ALB target group"
#   type        = string
# }
