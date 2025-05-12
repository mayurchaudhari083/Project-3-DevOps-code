vpc_security_group_ids = ["sg-0a2b79b94d4b38288"]
key_name               = "Mayur_Key_Pair"
subnet_id              = "subnet-0034c59563dfabecd"
iam_instance_profile   = "MyEC2InstanceRole"
project_name           = "DevOps"
env                    = "dev"

terraform_ami           = "ami-04681163a08179f28"
terraform_instance_type = "t2.micro"
terraform_name          = "terraform-ec2"

jenkins_ami           = "ami-04681163a08179f28"
jenkins_instance_type = "t2.micro"
jenkins_name          = "jenkins-ec2"
