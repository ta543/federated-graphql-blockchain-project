resource "google_firestore_database" "default" {
  provider            = google-beta
  project             = var.project
  database_id         = var.database_id
  location_id         = var.location_id
  type                = var.type
}
