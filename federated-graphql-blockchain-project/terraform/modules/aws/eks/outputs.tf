output "cluster_id" {
  description = "The EKS cluster ID."
  value       = aws_eks_cluster.eks_cluster.id
}

output "cluster_arn" {
  description = "The ARN of the EKS cluster."
  value       = aws_eks_cluster.eks_cluster.arn
}

output "cluster_endpoint" {
  description = "The endpoint for your EKS Kubernetes API."
  value       = aws_eks_cluster.eks_cluster.endpoint
}

output "node_group_arn" {
  description = "The ARN of the node group."
  value       = aws_eks_node_group.eks_node_group.arn
}
