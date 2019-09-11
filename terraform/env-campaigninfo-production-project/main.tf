module "campaigninfo" {
  source            = "./../modules/campaigninfo"
  AWS_REGION        = "eu-central-1"
  ENVIRONMENT       = "prod"
  RESOURCE_PREFIX   = "campaigninfo"
  DOMAIN            = "goodyear.eu"
}
