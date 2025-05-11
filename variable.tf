variable "terraform_ami" {}
variable "terraform_instance_type" {}
variable "jenkins_ami" {}
variable "jenkins_instance_type" {}
variable "vpc_security_group_ids" {
  type = list(string)
}
variable "key_name" {}
variable "subnet_id" {}
variable "iam_instance_profile" {}
variable "terraform_name" {}
variable "jenkins_name" {}
variable "project_name" {}
variable "env" {}
