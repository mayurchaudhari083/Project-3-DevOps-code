resource "aws_instance" "this" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  iam_instance_profile   = var.instance_profile_name

  associate_public_ip_address = true

  tags = {
    Name        = var.name
    Project     = var.project_name
    Environment = var.env
  }

  user_data = var.user_data
}
