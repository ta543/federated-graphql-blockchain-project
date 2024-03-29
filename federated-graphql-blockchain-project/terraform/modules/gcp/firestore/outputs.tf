output "firestore_database_id" {
  description = "The ID of the Firestore database."
  value       = google_firestore_database.default.name
}
