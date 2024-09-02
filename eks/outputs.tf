output "cluster_name" {
  description = "EKS cluster name"
  value       = module.eks.cluster_id
}

output "cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = module.eks.cluster_endpoint
}

output "kubeconfig" {
  description = "Kubeconfig file for EKS cluster"
  value       = module.eks.kubeconfig
}