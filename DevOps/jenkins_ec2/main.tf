module "jenkins_instance" {
  source                 = "../../Modules/EC2/V0"
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  iam_instance_profile   = var.iam_instance_profile
  name                   = var.name
  project_name           = var.project_name
  env                    = var.env
  user_data              = <<-EOF
  #!/bin/bash
  sudo yum update -y

  # Install Java 17 (Amazon Corretto)
  sudo amazon-linux-extras enable corretto17
  sudo yum install -y java-17-amazon-corretto

  # Install Jenkins
  wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
  sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
  sudo yum install -y jenkins

  # Enable and start Jenkins
  sudo systemctl enable jenkins
  sudo systemctl start jenkins
EOF

}

