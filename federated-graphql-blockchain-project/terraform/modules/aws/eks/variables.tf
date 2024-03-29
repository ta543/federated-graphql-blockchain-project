variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "cluster_role_arn" {
  description = "The ARN of the IAM role for the EKS cluster"
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs to launch the cluster in"
  type        = list(string)
}

variable "endpoint_private_access" {
  description = "Indicates whether or not the Amazon EKS private API server endpoint is enabled"
  type        = bool
  default     = false
}

variable "endpoint_public_access" {
  description = "Indicates whether or not the Amazon EKS public API server endpoint is enabled"
  type        = bool
  default     = true
}

variable "node_group_name" {
  description = "The name of the EKS node group"
  type        = string
}

variable "node_role_arn" {
  description = "The ARN of the IAM role for the node group"
  type        = string
}

variable "node_group_desired_capacity" {
  description = "The desired size of the node group"
  type        = number
  default     = 1
}

variable "node_group_max_capacity" {
  description = "The maximum size of the node group"
  type        = number
  default     = 3
}

variable "node_group_min_capacity" {
  description = "The minimum size of the node group"
  type        = number
  default     = 1
}
