terraform {
  backend "s3" {
    bucket = "amr-cloudlab-terraform-backend"
    key    = "amr/terraform/udacity_s3/terraform.tfstate"
    region = "us-east-1"
  }

}
