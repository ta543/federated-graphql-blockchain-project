variable "vpc_name" {
  description = "The name of the VPC to create."
  type        = string
  default     = "web-app-vpc"
}

variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "subnets" {
  description = "A list of subnets to create within the VPC."
  type = list(object({
    name   = string
    cidr   = string
    region = string
  }))
  default = [
    {
      name   = "frontend-subnet"
      cidr   = "10.0.10.0/24"
      region = "us-central1"
    },
    {
      name   = "backend-subnet"
      cidr   = "10.0.20.0/24"
      region = "us-central1"
    },
    {
      name   = "frontend-subnet-europe"
      cidr   = "10.0.30.0/24"
      region = "europe-west1"
    },
    {
      name   = "backend-subnet-europe"
      cidr   = "10.0.40.0/24"
      region = "europe-west1"
    }
  ]
}
