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
