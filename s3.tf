provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "s" {
  bucket = var.bucket
  acl    = "private"

    versioning {
    enabled = "false"
  }

  tags = {
    Environment = var.env
  }
}
