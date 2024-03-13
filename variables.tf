variable "aws_region" {
  type    = string
  default = "us-west-2"
}

variable "aws_profile" {
  type    = string
  default = "default"
}

variable "indent_webhook_secret" {
  type      = string
  sensitive = true
}

variable "gh_token" {
  type      = string
  default   = ""
  sensitive = true
}

variable "gh_org" {
  type      = string
  default   = ""
  sensitive = true
}

variable "gh_repo" {
  type      = string
  default   = ""
  sensitive = true
}

variable "indent_space_name" {
  type      = string
  default   = ""
  sensitive = true
}

