output "aws_s3_bucket_name" {
  value = aws_s3_bucket.example_bucket.bucket
}

output "aws_s3_bucket_arn" {
  value = aws_s3_bucket.example_bucket.arn
}

output "azure_resource_group_name" {
  value = azurerm_resource_group.example_rg.name
}

output "azure_resource_group_location" {
  value = azurerm_resource_group.example_rg.location
}

output "gcp_storage_bucket_name" {
  value = google_storage_bucket.example_bucket.name
}

output "gcp_storage_bucket_url" {
  value = google_storage_bucket.example_bucket.url
}
