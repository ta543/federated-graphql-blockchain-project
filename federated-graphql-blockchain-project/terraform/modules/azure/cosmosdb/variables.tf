variable "account_name" {
  description = "The name of the Cosmos DB account."
  type        = string
}

variable "location" {
  description = "The Azure region where the Cosmos DB account will be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group that will contain the Cosmos DB account."
  type        = string
}

variable "database_name" {
  description = "The name of the Cosmos DB SQL database."
  type        = string
}

variable "container_name" {
  description = "The name of the Cosmos DB SQL container."
  type        = string
}

variable "partition_key_path" {
  description = "The partition key path of the Cosmos DB SQL container."
  type        = string
}
