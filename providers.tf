provider "aws" {
  region  = var.region
  profile = "terraform"
}

# CloudFront requires an us-east-1 certificate
provider "aws" {
  alias   = "use1"
  region  = "us-east-1"
  profile = "terraform"
}