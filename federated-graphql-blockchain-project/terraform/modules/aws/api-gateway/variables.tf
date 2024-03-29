variable "api_name" {
  description = "The name of the API Gateway"
  type        = string
}

variable "api_description" {
  description = "The description of the API Gateway"
  type        = string
  default     = "Managed by Terraform"
}

variable "resource_path_part" {
  description = "The path part of the API Gateway resource"
  type        = string
  default     = "example"
}

variable "http_method" {
  description = "The HTTP method for the API resource"
  type        = string
  default     = "GET"
}

variable "authorization_type" {
  description = "The type of authorization used for the API method"
  type        = string
  default     = "NONE"
}

variable "integration_type" {
  description = "The integration type of the API method"
  type        = string
  default     = "HTTP"
}

variable "integration_http_method" {
  description = "The HTTP method for the integration"
  type        = string
  default     = "POST"
}

variable "integration_uri" {
  description = "The URI of the backend endpoint integrated with the API method"
  type        = string
}

variable "stage_name" {
  description = "The name of the deployment stage"
  type        = string
  default     = "dev"
}
