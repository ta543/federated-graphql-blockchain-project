output "db_instance_endpoint" {
  description = "The connection endpoint"
  value       = aws_db_instance.default.endpoint
}

output "db_instance_name" {
  description = "The name of the DB instance"
  value       = aws_db_instance.default.name
}
