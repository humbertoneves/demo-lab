resource "aws_s3_bucket" "baleado" {
  bucket = "humberto-baleado-123"
  acl    = "public-read"

  tags = {
    Name = "Bucket Baleado"
  }
}

resource "aws_s3_bucket_versioning" "versao" {
  bucket = aws_s3_bucket.baleado.id

  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "cripto" {
  bucket = aws_s3_bucket.baleado.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = ""
    }
  }
}

resource "aws_s3_bucket_public_access_block" "publicao" {
  bucket = aws_s3_bucket.baleado.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
