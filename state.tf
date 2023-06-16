terraform {
  backend "s3" {
    bucket = "terraform-b74"
    key    = "params/terraform.tfstate"
    region = "us-east-1"
  }
}


output "demo" {
  value = "Hello World"
}