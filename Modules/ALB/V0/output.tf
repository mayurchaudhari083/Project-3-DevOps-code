output "lb_arn" {
  value = aws_lb.this.arn
}

output "lb_dns_name" {
  value = aws_lb.this.dns_name
}

<<<<<<< HEAD
output "frontend_target_group_arn" {
  value = aws_lb_target_group.frontend_tg.arn
}

output "backend_target_group_arn" {
  value = aws_lb_target_group.backend_tg.arn
=======
output "alb_target_group_arn" {
  value = aws_lb_target_group.this.arn
>>>>>>> be0342becaaa3a6779377983fef992cc55f335af
}
