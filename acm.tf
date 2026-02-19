resource "aws_acm_certificate" "site" {
  provider    = aws.use1
  domain_name = "luisgarmir.com"

  subject_alternative_names = [
    "www.luisgarmir.com"
  ]

  validation_method = "DNS"
}


resource "aws_acm_certificate_validation" "site" {
  provider        = aws.use1
  certificate_arn = aws_acm_certificate.site.arn
}