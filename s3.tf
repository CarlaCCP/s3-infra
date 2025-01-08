resource "aws_s3_bucket" "s3" {
  bucket = "storage-image-extractor"
  expiration = {
    days = 1
  }
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}