variable "name" {}
variable "internal" {
  type = bool
}
variable "security_groups" {
  type = list(string)
}
variable "subnets" {
  type = list(string)
}
variable "vpc_id" {}
variable "enable_deletion_protection" {
  type = bool
}
variable "tags" {
  type = map(string)
}
variable "listener_port" {
  type = number
}
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
variable "application_instance" {
  type = string
}
