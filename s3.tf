provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "terra-test-bucket"
  acl    = "private"

    versioning {
    enabled = true
  }

  tags = {
    Name        = "terra-test-bucket"
//    Environment = "Dev"
    KEY         = "VALUE"
  }
}