resource "aws_lambda_function" "this" {
  function_name = var.function_name
  handler       = var.handler
  role          = var.role_arn
  runtime       = var.runtime

  s3_bucket        = var.s3_bucket
  s3_key           = var.s3_key
  source_code_hash = var.source_code_hash

  environment {
    variables = var.environment_variables
  }
}
