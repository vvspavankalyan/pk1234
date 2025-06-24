resource "aws_s3_bucket" "pavans3" {
  bucket = "pavan-vvspk-s3-bucket"

  tags = {
    Name        = "pavan-vvspk-s3-bucket"
    Environment = "Dev"
  }
}