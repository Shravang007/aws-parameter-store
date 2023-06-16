terraform {
  backend "s3" {
    bucket = "terraform-74"
    key    = "params/terraform.tfstate"
    region = "us-east-1"
  }
}