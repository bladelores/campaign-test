resource "aws_api_gateway_domain_name" "campaigninfo_domain" {
  domain_name              = "api-cmpgn.${var.DOMAIN}"
  regional_certificate_arn = "${var.SSL_ARN}"

  endpoint_configuration {
    types = ["REGIONAL"]
  }
}

resource "aws_api_gateway_api_key" "johndoe" {
  name        = "johndoe"
  description = "johndoe"
}