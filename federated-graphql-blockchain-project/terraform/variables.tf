variable "region" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  type    = string
}

variable "cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "rds_instance_class" {
  type    = string
  default = "db.t3.medium"
}

variable "rds_allocated_storage" {
  type    = number
  default = 20
}

variable "rds_engine_version" {
  type    = string
  default = "12.4"
}

variable "rds_username" {
  type    = string
  default = "admin"
}

variable "rds_password" {
  type        = string
  sensitive   = true
}

variable "eks_cluster_name" {
  type    = string
  default = "fgbp-cluster"
}

variable "eks_cluster_role_arn" {
  type    = string
}

variable "eks_node_group_name" {
  type    = string
  default = "fgbp-node-group"
}

variable "eks_node_role_arn" {
  type    = string
}

variable "dynamodb_table_name" {
  type    = string
  default = "fgbp-dynamodb-table"
}

variable "hash_key" {
  type    = string
  default = "id"
}

variable "range_key" {
  type    = string
  default = ""
}

variable "api_name" {
  type    = string
  default = "FGPB-API"
}

variable "resource_path_part" {
  type    = string
  default = "query"
}

variable "http_method" {
  type    = string
  default = "POST"
}

variable "integration_uri" {
  type    = string
}

variable "azure_location" {
  type        = string
  description = "The Azure region where resources will be created."
  default     = "East US"
}

variable "gcp_project" {
  type        = string
  description = "The GCP project ID where resources will be created."
}

variable "gcp_region" {
  type        = string
  description = "The GCP region where resources will be created."
  default     = "us-central1"
}

variable "aws_s3_bucket_name" {
  type        = string
  description = "The name of the AWS S3 bucket to be created."
}

variable "azure_resource_group_name" {
  type        = string
  description = "The name of the Azure resource group to be created."
}

variable "azure_vnet_name" {
  type        = string
  description = "The name of the Azure virtual network."
}

variable "azure_address_spaces" {
  type        = list(string)
  description = "The address spaces for the Azure virtual network."
  default     = ["10.0.0.0/16"]
}

variable "azure_subnets" {
  type = list(object({
    name              = string
    address_prefixes  = list(string)
  }))
  description = "A list of subnets to create within the Azure virtual network."
}

variable "gcp_storage_bucket_name" {
  type        = string
  description = "The name of the GCP storage bucket to be created."
}

