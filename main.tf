provider "aws" {
  region = "us-east-1"
  }
resource "aws_s3_bicket" "b" {
  bucket = "sandp-global"
  tags = {
    Name = "sandp-global"
    Environment = "Dev"
    }
  }

output "s3_bucket" {
  value = aws_s3_bucket.b.bucket
  }
