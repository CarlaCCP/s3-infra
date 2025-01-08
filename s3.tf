resource "aws_s3_bucket" "s3" {
  bucket = "storage-image-extractor"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "meu_lifecycle" {
  bucket = aws_s3_bucket.s3.bucket

  rule {
    id        = "expiracao_de_objetos"
    enabled   = true

    expiration {
      days = 1
    }
  }
}