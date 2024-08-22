variable "aws_access_key" {
  type = string
  description = "AWS access key"
  sensitive = true
}

variable "aws_secret_key" {
  type = string
  description = "AWS secret key"
  sensitive = true
}

provider "aws" {
  region = "ap-south-1"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

resource "aws_s3_bucket" "data_store" {
  bucket = "data-store-amazon-runway"

  tags = {
    Name        = "amazon-runway"
    Environment = "Dev"
  }
}
