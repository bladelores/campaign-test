data "terraform_remote_state" "infrastructure" {
 backend = "s3"
 config {
   bucket         = "campaigninfo-${var.ENVIRONMENT}-infrastructure"
   key            = "terraform/campaigninfo/eu-central-1/${var.ENVIRONMENT}/infrastructure.tfstate"
   region         = "${var.AWS_REGION}"
   kms_key_id     = "${var.TERRAFORM_KMS_KEY}"
 }
}