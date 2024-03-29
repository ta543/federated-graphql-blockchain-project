terraform {
  backend "s3" {
    bucket         = "fgbp-terraform-state"
    key            = "terraform/state/fgbp-terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "fgbp-terraform-lock"
    encrypt        = true
  }
}
