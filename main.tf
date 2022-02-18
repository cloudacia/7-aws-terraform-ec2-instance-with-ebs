terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.73"
    }
  }
}

###############################################
#  CONFIGURE THE AWS PROVIDER                 #
###############################################
provider "aws" {
  region = var.aws_region
}
