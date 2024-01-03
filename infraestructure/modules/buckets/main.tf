resource "aws_s3_bucket" "datalake" {
  bucket = "${var.bucket_prefix}-datalake"
  acl    = "private"

  tags = {
    Name        = "${var.bucket_prefix}-datalake"
    Environment = var.environment
  }
}

resource "aws_s3_bucket" "code_files" {
  bucket = "${var.bucket_prefix}-code-files"
  acl    = "private"

  tags = {
    Name        = "${var.bucket_prefix}-code-files"
    Environment = var.environment
  }
}

resource "aws_s3_bucket" "artifacts" {
  bucket = "${var.bucket_prefix}-artifacts"
  acl    = "private"

  tags = {
    Name        = "${var.bucket_prefix}-artifacts"
    Environment = var.environment
  }
}