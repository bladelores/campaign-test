module "infrastructure" {
  source = "./../modules/infrastructure"
  AWS_REGION = "eu-central-1"
  ENVIRONMENT = "prod"
  RESOURCE_PREFIX = "campaigninfo"

  VPC_CIDR = "10.165.16.0/22"
  AZ = ["eu-central-1a", "eu-central-1b"]
  PUBLIC_SUBNET_CIDR = ["10.165.17.0/24", "10.165.19.0/24"]
  PRIVATE_SUBNET_CIDR = ["10.165.16.0/24", "10.165.18.0/24"]
}