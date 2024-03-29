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
