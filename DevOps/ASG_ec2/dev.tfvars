vpc_id                = "vpc-0b5257a147240a7c2"
subnet_ids            = ["subnet-0240a86a8ee3c206d", "subnet-0422e709e4abb0569"]
alb_sg_id             = ["sg-0640df8db79727a94"]
launch_template_name  = "my-app-template"
instance_profile_name = "my-ec2-instance-profile"
desired_capacity      = 2
min_size              = 1
max_size              = 3
