provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "var.BUCKET"
  acl    = "private"

    versioning {
    enabled = true
  }

  tags = {
    Name        = "terra-test-bucket"
    Environment = "var.ENV"
    KEY         = "VALUE"
  }
}
