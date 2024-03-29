variable "project" {
  description = "The ID of the GCP project."
  type        = string
  # It's essential to explicitly specify the project ID for clarity and to avoid deploying resources to an unintended project.
}

variable "database_id" {
  description = "A unique identifier for the database."
  type        = string
  default     = "(default)"
}

variable "location_id" {
  description = "The location of the database. For Firestore in Datastore mode, this should be an empty string."
  type        = string
  default     = "us-central1"  # A commonly used region, adjust as necessary for your project.
}

variable "type" {
  description = "The type of the database. Can be either `FIRESTORE_NATIVE` or `DATASTORE_MODE`."
  type        = string
  default     = "FIRESTORE_NATIVE"  # Assumes the use of Firestore's native mode, which provides more capabilities than Datastore mode.
}
