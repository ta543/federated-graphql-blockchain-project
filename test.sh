#!/bin/bash

# Define the module directory path for the GCP VPC module
MODULE_DIR="./modules/gcp/vpc"

# Create the module directory
mkdir -p "$MODULE_DIR"

# Navigate into the module directory
cd "$MODULE_DIR" || exit

# Create main.tf with GCP VPC configuration
cat <<'EOF' > main.tf
resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"
  project                 = var.project_id
}

resource "google_compute_subnetwork" "subnets" {
  for_each = { for subnet in var.subnets : subnet.name => subnet }

  name          = each.value.name
  ip_cidr_range = each.value.cidr
  region        = each.value.region
  network       = google_compute_network.vpc.self_link
  project       = var.project_id
}
EOF

# Create variables.tf for the VPC module
cat <<'EOF' > variables.tf
variable "vpc_name" {
  description = "The name of the VPC to create."
  type        = string
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
}
EOF

# Create outputs.tf for the VPC module
cat <<'EOF' > outputs.tf
output "vpc_name" {
  description = "The name of the VPC."
  value       = google_compute_network.vpc.name
}

output "vpc_self_link" {
  description = "The URI of the VPC being created."
  value       = google_compute_network.vpc.self_link
}

output "subnet_self_links" {
  description = "A map of subnet names to their self-links."
  value       = { for subnet in google_compute_subnetwork.subnets : subnet.name => subnet.self_link }
}
EOF

echo "GCP VPC module setup complete."
