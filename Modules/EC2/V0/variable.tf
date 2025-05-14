variable "ami" {}
variable "instance_type" {}
variable "vpc_security_group_ids" {
  type = list(string)
}
variable "key_name" {}
variable "subnet_id" {}
variable "instance_profile_name" {
  type = string
}
variable "name" {}
variable "project_name" {}
variable "env" {}
variable "user_data" {
  type    = string
  default = ""
}
