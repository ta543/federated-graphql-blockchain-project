variable "function_name" {
  description = "The name of the Cloud Function."
  type        = string
  default     = "webhook-handler"
}

variable "description" {
  description = "The description of the Cloud Function."
  type        = string
  default     = "Processes incoming webhooks and performs an action."
}

variable "runtime" {
  description = "The runtime in which the function is to run."
  type        = string
  default     = "python39" 
}

variable "available_memory_mb" {
  description = "The amount of memory in megabytes allotted for the function to use."
  type        = number
  default     = 256 
}

variable "source_archive_path" {
  description = "The path to the source code archive file."
  type        = string
  default     = "gs://my-cloud-functions-bucket/webhook-handler.zip"
}

variable "entry_point" {
  description = "The name of the function (as defined in source code) that will be executed."
  type        = string
  default     = "process_webhook"
}

variable "trigger_http" {
  description = "Boolean variable. If set to true, function is triggered by HTTP requests."
  type        = bool
  default     = true
}

variable "project" {
  description = "The GCP project ID."
  type        = string
}

variable "region" {
  description = "The GCP region where the function will be deployed."
  type        = string
  default     = "us-central1"
}

variable "environment_variables" {
  description = "A map of key-value pairs to set as environment variables in the function."
  type        = map(string)
  default     = {
    LOG_LEVEL = "INFO"
  }
}

variable "event_trigger_event_type" {
  description = "The type of event to trigger the function."
  type        = string
  default     = "" 
}

variable "event_trigger_resource" {
  description = "The resource that the event originates from."
  type        = string
  default     = "" 
}

variable "event_trigger_failure_policy_retry" {
  description = "Whether the function should be retried on failure."
  type        = bool
  default     = false
}
