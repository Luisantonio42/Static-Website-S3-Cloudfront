terraform {
  backend "s3" {
    # luisgarmir-tfstate-6fd22e57
    bucket       = "luisgarmir-tfstate-6fd22e57"   # must be globally unique
    key          = "portfolio/static-site.tfstate"
    region       = "us-west-2"                          # pick your main region
    encrypt      = true

    # No more dynamo: S3 native state locking
    use_lockfile = true
  }
}
