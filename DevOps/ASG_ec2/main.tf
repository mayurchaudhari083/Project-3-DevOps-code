module "asg" {
  source                = "../modules/asg"
  vpc_zone_identifier   = var.subnet_ids
  launch_template_name  = var.launch_template_name
  desired_capacity      = var.desired_capacity
  min_size              = var.min_size
  max_size              = var.max_size
  target_group_arns     = [module.alb.target_group_arn]
  instance_profile_name = var.instance_profile_name
}
