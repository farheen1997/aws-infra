provider "aws" {
  region = var.REGION
}

resource "aws_s3_bucket" "s" {
  bucket = var.BUCKET
  acl    = "private"

    versioning {
    enabled = "false"
  }

  tags = {
    Environment = var.ENV
  }
}
