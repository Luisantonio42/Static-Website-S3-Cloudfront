locals {
  cloudfront_zone_id = "Z2FDTNDATAQYW2"
}

# apex -> CloudFront (A)
resource "aws_route53_record" "apex_a" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "luisgarmir.com"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.site.domain_name
    zone_id                = local.cloudfront_zone_id
    evaluate_target_health = false
  }
}

# apex -> CloudFront (AAAA)
resource "aws_route53_record" "apex_aaaa" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "luisgarmir.com"
  type    = "AAAA"

  alias {
    name                   = aws_cloudfront_distribution.site.domain_name
    zone_id                = local.cloudfront_zone_id
    evaluate_target_health = false
  }
}

# www -> CloudFront
resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "www"
  type    = "CNAME"
  ttl     = 300
  records = [aws_cloudfront_distribution.site.domain_name]
}
