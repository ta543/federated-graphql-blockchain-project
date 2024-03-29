output "cloud_function_name" {
  description = "The name of the Cloud Function."
  value       = google_cloudfunctions_function.default.name
}

output "cloud_function_url" {
  description = "The URL of the Cloud Function."
  value       = google_cloudfunctions_function.default.https_trigger_url
}
