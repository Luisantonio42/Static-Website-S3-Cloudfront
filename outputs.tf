output "bucket_name" {
  description = "Name of the S3 bucket that stores the site content."
  value       = aws_s3_bucket.site.bucket
}
