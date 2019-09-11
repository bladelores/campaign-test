module "campaigninfo" {
  source            = "./../modules/campaigninfo"
  AWS_REGION        = "eu-central-1"
  ENVIRONMENT       = "prod"
  RESOURCE_PREFIX   = "campaigninfo"
  SSL_ARN           = "arn:aws:acm:eu-central-1:551556101011:certificate/fba6e837-0f0b-4bd1-aa6f-90519c8bd04b"
  TERRAFORM_KMS_KEY = "arn:aws:kms:eu-central-1:551556101011:key/12e138ce-555b-476c-8b8c-af7670cf9f20"
  DOMAIN            = "goodyear.eu"
}
