variable "vpc_zone_identifier" {
  description = "List of subnet IDs for the Auto Scaling Group"
  type        = list(string)
}

variable "launch_template_name" {
  description = "Name of the launch template"
  type        = string
}

variable "desired_capacity" {
  description = "Number of desired EC2 instances"
  type        = number
}

variable "min_size" {
  description = "Minimum number of EC2 instances"
  type        = number
}

variable "max_size" {
  description = "Maximum number of EC2 instances"
  type        = number
}

variable "target_group_arns" {
  description = "List of ALB target group ARNs"
  type        = list(string)
}

variable "instance_profile_name" {
  description = "IAM instance profile to attach to EC2s"
  type        = string
}
