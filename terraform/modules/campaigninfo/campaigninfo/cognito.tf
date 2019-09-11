resource "aws_cognito_user_pool" "cmpgn" {
     name = "cmpgn-cognito-${var.ENVIRONMENT}"
}

resource "aws_cognito_resource_server" "campaigninfo_api" {
  identifier = "campaigninfo.api"
  name       = "CampaignInfo API"

  scope = [{
    scope_name        = "campaign.info"
    scope_description = "Get all campaign info"
  }]

  user_pool_id = "${aws_cognito_user_pool.cmpgn.id}"
}

resource "aws_cognito_user_pool_client" "Johndoe" {
     name = "Johndoe"
     user_pool_id = "${aws_cognito_user_pool.cmpgn.id}"
     generate_secret = true
     explicit_auth_flows = ["CUSTOM_AUTH_FLOW_ONLY"]
     allowed_oauth_flows = ["client_credentials"]
     supported_identity_providers = ["COGNITO"]
     allowed_oauth_flows_user_pool_client = true
     allowed_oauth_scopes = ["campaigninfo.api/campaign.info"]
}

resource "aws_cognito_user_pool_domain" "cmpgn" {
  domain       = "cmpgn-${var.ENVIRONMENT}"
  user_pool_id = "${aws_cognito_user_pool.cmpgn.id}"
}