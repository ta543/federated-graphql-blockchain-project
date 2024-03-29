resource "google_container_cluster" "gke_cluster" {
  provider            = google-beta
  name                = var.cluster_name
  location            = var.location
  initial_node_count  = var.initial_node_count

  node_config {
    machine_type = var.machine_type
    oauth_scopes = var.oauth_scopes
  }

  release_channel {
    channel = var.release_channel
  }
}
