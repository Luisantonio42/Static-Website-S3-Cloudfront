output "bucket_name" {
  description = "Name of the S3 bucket that stores the site content."
  value       = aws_s3_bucket.site.bucket
}

output "cloudfront_url" {
  description = "CloudFront URL for the website (HTTPS)."
  value       = "https://${aws_cloudfront_distribution.site.domain_name}"
}
