variable "function_name" {
  description = "The name of the Lambda function"
  type        = string
  default     = "DefaultLambdaFunctionName"
}

variable "handler" {
  description = "The function entrypoint in your code"
  type        = string
  default     = "index.handler"
}

variable "role_arn" {
  description = "The ARN of the IAM role that Lambda assumes"
  type        = string
}

variable "runtime" {
  description = "The identifier of the function's runtime"
  type        = string
  default     = "python3.8"
}

variable "s3_bucket" {
  description = "The S3 bucket containing the function's deployment package"
  type        = string
  default     = "my-default-lambda-deployments"
}

variable "s3_key" {
  description = "The S3 key of the function's deployment package"
  type        = string
  default     = "lambda_function.zip"
}

variable "source_code_hash" {
  description = "The base64-encoded SHA256 hash of the package file stored in Amazon S3 (optional)"
  type        = string
  default     = ""
}

variable "environment_variables" {
  description = "A map that defines environment variables for the Lambda function"
  type        = map(string)
  default     = {}
}
