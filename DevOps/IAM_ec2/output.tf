output "instance_profile_name" {
  description = "The name of the IAM instance profile"
  value       = module.shared_iam.instance_profile_name
}
