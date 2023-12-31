terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.aws_region
  # profile = var.aws_profile

}



provider "aws" {
  alias   = "west-2"
  region  = "us-west-2"
  # profile = var.aws_profile

}
