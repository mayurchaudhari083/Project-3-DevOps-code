sg_name        = "FQTS-sg"
sg_description = "Security group for app"
vpc_id         = "vpc-0b5257a147240a7c2"

sg_ingress = [
  {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
<<<<<<< HEAD
    cidr_blocks = ["0.0.0.0/0"]
=======
    cidr_blocks = ["10.0.0.0/16"]
>>>>>>> be0342becaaa3a6779377983fef992cc55f335af
  }
]

sg_egress = [
  {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

sg_tags = {
  Environment = "dev"
  Owner       = "team"
}

