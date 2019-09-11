module "campaigninfo" {
  source = "./campaigninfo"

  ENVIRONMENT = "${var.ENVIRONMENT}"
  RESOURCE_PREFIX = "${var.RESOURCE_PREFIX}"
  AWS_REGION = "${var.AWS_REGION}"
  DOMAIN = "${var.DOMAIN}"
# VPC_ID = "${data.terraform_remote_state.infrastructure.vpc_id}"
  INSTANCE_SUBNETS = ["${split(",", data.terraform_remote_state.infrastructure.private_subnets)}"]
  SSL_ARN = "${var.SSL_ARN}"
  DOMAIN = "${var.DOMAIN}"
}