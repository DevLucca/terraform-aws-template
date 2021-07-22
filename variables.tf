variable "project-name" {
  type    = string
  default = "super-ensino"
}

variable "workspace" {
  type    = string
  default = "development"
  validation {
    condition     = contains(["production", "development"], var.workspace)
    error_message = "Allowed values for workspace are `production` or `development`."
  }
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "sa-east-1"
}

variable "aws_access_key" {
  description = "AWS Access Key (HIGHLY SENSITIVE)"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS Secret Key (HIGHLY SENSITIVE)"
  type        = string
  sensitive   = true
}
