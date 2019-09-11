module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "1.15.0"

  name = "${var.RESOURCE_PREFIX}-vpc-${var.ENVIRONMENT}"
  cidr =  "${var.VPC_CIDR}"

  azs             = "${var.AZ}"
  private_subnets = "${var.PRIVATE_SUBNET_CIDR}"
  public_subnets  = "${var.PUBLIC_SUBNET_CIDR}"

  enable_dns_hostnames = true
  enable_dns_support = true

  enable_nat_gateway = true

  enable_dynamodb_endpoint = true

  tags = {
    Terraform = "true"
    Environment = "${var.ENVIRONMENT}"
  }
}