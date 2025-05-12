provider "aws" {
  region = var.region
}

module "S3_Bucket" {
  source            = "../../Modules/S3_Bucket/V0"
  bucket_name       = var.bucket_name
  enable_versioning = var.enable_versioning
  enable_encryption = var.enable_encryption
  tags              = var.tags
}

