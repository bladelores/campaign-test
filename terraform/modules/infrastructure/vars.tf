variable "AWS_REGION" {
  description = "The AWS region."
}

variable "ENVIRONMENT" {
  description = "The name of the environment, one of non-prod, dev, test, prod."
}

variable "RESOURCE_PREFIX" {
  description = "The resource prefix."
}

variable "VPC_CIDR" {
}

variable "AZ" {
  type = "list"
}

variable "PUBLIC_SUBNET_CIDR" {
  type = "list"
}

variable "PRIVATE_SUBNET_CIDR" {
  type = "list"
}