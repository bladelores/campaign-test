terraform {
  required_version = "> 0.10.0"
}

provider "template" {
  version = "~> 1.0"
}

provider "aws" {
  region = "eu-central-1"
  profile = "goodyear"
  version = "~> 1.2"
}