module "Security_group" {
  source        = "../../Modules/Security_group/V0"
  name          = var.sg_name
  description   = var.sg_description
  vpc_id        = var.vpc_id
  ingress_rules = var.sg_ingress
  egress_rules  = var.sg_egress
  tags          = var.sg_tags
}
