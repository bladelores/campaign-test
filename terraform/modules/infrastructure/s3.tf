resource "aws_s3_bucket" "logs" {
  bucket = "${var.RESOURCE_PREFIX}-logs-${var.ENVIRONMENT}"
  acl    = "private"
  region = "${var.AWS_REGION}"
}

resource "aws_s3_bucket" "data" {
  bucket = "${var.RESOURCE_PREFIX}-data-${var.ENVIRONMENT}"
  acl    = "private"
  region = "${var.AWS_REGION}"
}

resource "aws_s3_bucket" "lambda" {
  bucket = "${var.RESOURCE_PREFIX}-lambda-${var.ENVIRONMENT}"
  acl    = "private"
  region = "${var.AWS_REGION}"
}

resource "aws_s3_bucket" "swagger" {
  bucket = "${var.RESOURCE_PREFIX}-swagger-specs-bucket-${var.ENVIRONMENT}"
  acl    = "private"
  region = "${var.AWS_REGION}"
}