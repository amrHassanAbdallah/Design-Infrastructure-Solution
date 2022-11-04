variable "aws_access_key"  {}
variable "aws_secret_key"  {}
variable "aws_region"      {}

provider "aws" {
  region  = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

module "lambda" {
  source = "./lambda"
  count = 0
}

