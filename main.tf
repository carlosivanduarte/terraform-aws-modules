resource "aws_s3_bucket" "bucket_generic" {
  bucket = var.bucket_name

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"  
      }
    }
  }

  versioning {
    enabled = var.versioning
  }
  
}

resource "aws_s3_bucket_public_access_block" "bucket_generic_public_access" {
  bucket = aws_s3_bucket.bucket_generic.id

  block_public_acls       = true
  block_public_policy     = true
  restrict_public_buckets = true
  ignore_public_acls      = true
}
