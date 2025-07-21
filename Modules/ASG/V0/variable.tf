variable "vpc_zone_identifier" {
  description = "List of subnet IDs for the Auto Scaling Group"
  type        = list(string)
}

variable "desired_capacity" {
  description = "Desired number of instances"
  type        = number
}

variable "min_size" {
  description = "Minimum number of instances"
  type        = number
}

variable "max_size" {
  description = "Maximum number of instances"
  type        = number
}

variable "target_group_arns" {
  description = "Target group ARNs for ALB"
  type        = list(string)
}

variable "instance_profile_name" {
  description = "IAM instance profile name"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "user_data" {
  description = "User data script"
  type        = string
  default     = ""
}

variable "asg_name" {
  description = "Name of the Auto Scaling Group"
  type        = string
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
}

variable "target_cpu_utilization" {
  description = "CPU utilization percentage to trigger scale out"
  type        = number
  default     = 70
}

