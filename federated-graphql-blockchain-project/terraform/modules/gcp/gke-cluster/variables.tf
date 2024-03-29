variable "cluster_name" {
  description = "The name of the GKE cluster."
  type        = string
  default     = "my-gke-cluster"
}

variable "location" {
  description = "The location (region or zone) where the cluster will be created."
  type        = string
  default     = "us-central1"
}

variable "initial_node_count" {
  description = "The number of nodes to create in this cluster's default node pool."
  type        = number
  default     = 3
}

variable "machine_type" {
  description = "The machine type of the cluster's nodes."
  type        = string
  default     = "e2-medium"
}

variable "oauth_scopes" {
  description = "The set of Google API scopes to be made available on all of the node VMs."
  type        = list(string)
  default     = [
    "https://www.googleapis.com/auth/compute",
    "https://www.googleapis.com/auth/devstorage.read_only",
    "https://www.googleapis.com/auth/logging.write",
    "https://www.googleapis.com/auth/monitoring"
  ]
}

variable "release_channel" {
  description = "The release channel of the GKE cluster. Eg. 'UNSPECIFIED', 'RAPID', 'REGULAR', 'STABLE'"
  type        = string
  default     = "REGULAR"
}
