module "terraform_ec2" {
  source                 = "./DevOps/terraform_ec2"
  ami                    = var.terraform_ami
  instance_type          = var.terraform_instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  iam_instance_profile   = var.iam_instance_profile
  name                   = var.terraform_name
  project_name           = var.project_name
  env                    = var.env
}

module "jenkins_ec2" {
  source                 = "./DevOps/jenkins_ec2"
  ami                    = var.jenkins_ami
  instance_type          = var.jenkins_instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  iam_instance_profile   = var.iam_instance_profile
  name                   = var.jenkins_name
  project_name           = var.project_name
  env                    = var.env
}
