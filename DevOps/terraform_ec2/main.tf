module "terraform_instance" {
  source                 = "../../Modules/EC2/V0"
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  instance_profile_name  = var.iam_instance_profile
  name                   = var.name
  project_name           = var.project_name
  env                    = var.env

  user_data = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install -y wget unzip
    wget https://releases.hashicorp.com/terraform/1.6.6/terraform_1.6.6_linux_amd64.zip
    unzip terraform_1.6.6_linux_amd64.zip
    sudo mv terraform /usr/local/bin/
    terraform -version
  EOF
}
