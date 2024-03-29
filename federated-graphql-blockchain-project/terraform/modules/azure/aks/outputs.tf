output "cluster_id" {
  description = "The ID of the AKS cluster."
  value       = azurerm_kubernetes_cluster.aks.id
}

output "kube_config" {
  description = "The kubeconfig for the AKS cluster."
  sensitive   = true
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
}
