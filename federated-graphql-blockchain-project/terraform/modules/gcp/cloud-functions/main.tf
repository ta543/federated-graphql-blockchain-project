resource "google_cloudfunctions_function" "default" {
  name        = var.function_name
  description = var.description
  runtime     = var.runtime

  available_memory_mb   = var.available_memory_mb
  source_archive_bucket = google_storage_bucket.function_source.name
  source_archive_object = google_storage_bucket_object.function_archive.name
  entry_point           = var.entry_point
  trigger_http          = var.trigger_http
  project               = var.project
  region                = var.region

  environment_variables = var.environment_variables

  event_trigger {
    event_type = var.event_trigger_event_type
    resource   = var.event_trigger_resource
    failure_policy {
      retry = var.event_trigger_failure_policy_retry
    }
  }
}

resource "google_storage_bucket" "function_source" {
  name     = "gcf-${var.function_name}-source"
  project  = var.project
  location = var.region
}

resource "google_storage_bucket_object" "function_archive" {
  name   = "source.zip"
  bucket = google_storage_bucket.function_source.name
  source = var.source_archive_path
}
