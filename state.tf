terraform {
  backend "s3" {
    bucket = "terraform-74"
    key    = "params/terraform-74.tfstate"
    region = "us-east-1"
  }
}