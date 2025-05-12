output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.this.id
}

output "Private_ip" {
  description = "The private IP address"
  value       = aws_instance.this.private_ip
}

output "Public_ip" {
  description = "The public IP address"
  value       = aws_instance.this.public_ip
}
