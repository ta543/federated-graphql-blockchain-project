output "api_gateway_invoke_url" {
  description = "The URL to invoke the API Gateway"
  value       = "${aws_api_gateway_deployment.this_deployment.invoke_url}${var.stage_name}/"
}
