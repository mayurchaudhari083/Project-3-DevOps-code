output "asg_name" {
  description = "Name of the Auto Scaling Group"
  value       = aws_autoscaling_group.this.name
}

output "asg_arn" {
  description = "ARN of the Auto Scaling Group"
  value       = aws_autoscaling_group.this.arn
}

output "scaling_policy_name" {
  value = aws_autoscaling_policy.cpu_target_tracking.name
}

output "scaling_policy_arn" {
  value = aws_autoscaling_policy.cpu_target_tracking.arn
}
