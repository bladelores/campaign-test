terraform {
  backend "s3" {
    region = "eu-central-1"
    bucket = "campaigninfo-prod-infrastructure"
    key = "terraform/campaigninfo/eu-central-1/prod/beadbarcode.tfstate"
    encrypt = true
  }
}
