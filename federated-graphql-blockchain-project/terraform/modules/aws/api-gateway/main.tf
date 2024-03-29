resource "aws_api_gateway_rest_api" "this" {
  name        = var.api_name
  description = var.api_description
}

resource "aws_api_gateway_resource" "this_resource" {
  rest_api_id = aws_api_gateway_rest_api.this.id
  parent_id   = aws_api_gateway_rest_api.this.root_resource_id
  path_part   = var.resource_path_part
}

resource "aws_api_gateway_method" "this_method" {
  rest_api_id   = aws_api_gateway_rest_api.this.id
  resource_id   = aws_api_gateway_resource.this_resource.id
  http_method   = var.http_method
  authorization = var.authorization_type
}

resource "aws_api_gateway_integration" "this_integration" {
  rest_api_id = aws_api_gateway_rest_api.this.id
  resource_id = aws_api_gateway_resource.this_resource.id
  http_method = aws_api_gateway_method.this_method.http_method

  type                    = var.integration_type
  integration_http_method = var.integration_http_method
  uri                     = var.integration_uri
}

resource "aws_api_gateway_deployment" "this_deployment" {
  depends_on = [
    aws_api_gateway_integration.this_integration,
  ]

  rest_api_id = aws_api_gateway_rest_api.this.id
  stage_name  = var.stage_name
}
