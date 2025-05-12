module "shared_iam" {
  source             = "../../Modules/IAM/V0" # adjust path as needed
  role_name          = var.role_name
  service_principals = var.service_principals
  permissions        = var.permissions
}
