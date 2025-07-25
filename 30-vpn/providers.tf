terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
 }
}

backend "s3" {
  bucket = "84s-remote-site-dev"
  key = "roboshop-dev-vpn"
  region = "us-east-1"
  encrypt = true
  use_lockfile = true
 }
}

provider "aws" {
  # configuration options
  region = "us-east-1"
}