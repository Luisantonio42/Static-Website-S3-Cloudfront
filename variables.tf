variable "region" {
  description = "AWS region where resources will be created."
  type        = string
  default     = "us-west-2"
}

variable "project_name" {
  description = "Project name prefix used for resource naming."
  type        = string
  default     = "static-site"
}

variable "site_dir" {
  description = "Relative path to the folder containing static site files (from the terraform directory)."
  type        = string
  default     = "site"
}

variable "domain_name" {
  description = "Custom domain for the website (recommended: www.site-name.com)."
  type        = string
  default     = "www.luisgarmir.com"
}
