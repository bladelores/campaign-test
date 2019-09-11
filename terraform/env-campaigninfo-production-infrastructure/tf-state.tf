terraform {
  backend "s3" {
    region = "eu-central-1"
    bucket = "campaigninfo-prod-infrastructure"
    key = "terraform/campaigninfo/eu-central-1/prod/infrastructure.tfstate"
   #kms_key_id = "arn:aws:kms:eu-central-1:551556101011:key/12e138ce-555b-476c-8b8c-af7670cf9f20"
    encrypt = true
  }
}