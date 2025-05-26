module "Application_EC2" {
  source                 = "../../Modules/EC2/V0"
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name               = var.key_name
  name                   = "${var.project_name}-${var.unique_id}"
  project_name           = var.project_name
  env                    = var.env
  iam_instance_profile   = var.iam_instance_profile
  subnet_id              = var.subnet_id
}
