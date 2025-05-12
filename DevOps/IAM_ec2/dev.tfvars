role_name          = "Project-3-DevOps-code"
service_principals = ["ec2.amazonaws.com"]

permissions = [
  {
    name      = "DescribeEC2"
    actions   = ["ec2:DescribeInstances"]
    resources = ["*"]
  },
  {
    name      = "ReadS3"
    actions   = ["s3:GetObject"]
    resources = ["arn:aws:s3:::example-bucket/*"]
  }
]
