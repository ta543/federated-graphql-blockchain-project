provider "aws" {
  region = "us-east-1"
}

provider "azurerm" {
  features {}
  location = "East US"
}

provider "google" {
  project = "my-gcp-project"
  region  = "us-central1"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-unique-bucket-name-${random_pet.name.id}"
  acl    = "private"
}

resource "azurerm_resource_group" "example_rg" {
  name     = "exampleResourceGroup"
  location = "East US"
}

resource "google_storage_bucket" "example_bucket" {
  name          = "gcp-example-bucket-${random_pet.name.id}"
  location      = "US"
  force_destroy = true
}

resource "random_pet" "name" {
  length    = 2
  separator = "-"
}
