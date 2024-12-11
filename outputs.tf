output "bucket_name" {
  description = "Name of the new S3 bucket"
  value       = aws_s3_bucket.bucket_generic.bucket
}

output "bucket_arn" {
  description = "ARN of the new S3 bucket"
  value       = aws_s3_bucket.bucket_generic.arn
}