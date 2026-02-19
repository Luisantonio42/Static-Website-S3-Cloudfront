output "bucket_name" {
  description = "Name of the S3 bucket that stores the site content."
  value       = aws_s3_bucket.site.bucket
}

output "cloudfront_url" {
  description = "CloudFront URL for the website (HTTPS)."
  value       = "https://${aws_cloudfront_distribution.site.domain_name}"
}

output "acm_dns_validation_records" {
  description = "Create these DNS CNAME records in your DNS provider (Hostinger) to validate the ACM certificate."
  value = [
    for dvo in aws_acm_certificate.site.domain_validation_options : {
      domain_name           = dvo.domain_name
      resource_record_name  = dvo.resource_record_name
      resource_record_type  = dvo.resource_record_type
      resource_record_value = dvo.resource_record_value
    }
  ]
}

output "acm_certificate_arn" {
  value = aws_acm_certificate.site.arn
}

output "route53_nameservers" {
  value = aws_route53_zone.primary.name_servers
}