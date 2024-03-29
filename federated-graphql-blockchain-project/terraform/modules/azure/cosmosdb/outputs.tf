output "cosmosdb_account_id" {
  description = "The ID of the Cosmos DB account."
  value       = azurerm_cosmosdb_account.cosmosdb.id
}

output "cosmosdb_sql_database_id" {
  description = "The ID of the Cosmos DB SQL database."
  value       = azurerm_cosmosdb_sql_database.sql_db.id
}

output "cosmosdb_sql_container_id" {
  description = "The ID of the Cosmos DB SQL container."
  value       = azurerm_cosmosdb_sql_container.sql_container.id
}
