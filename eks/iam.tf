module "eks_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc"
  version = "5.44.0"

  create_role         = true
  role_name           = "${var.cluster_name}-eks-role"
  provider_url        = "https://oidc.eks.${var.region}.amazonaws.com/id/${module.eks.cluster_id}"
  oidc_fully_qualified_subjects = ["system:serviceaccount:kube-system:aws-node"]

  role_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
    "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
  ]

  tags = var.tags
}

module "node_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc"
  version = "5.44.0"

  create_role         = true
  role_name           = "${var.cluster_name}-eks-node-role"
  provider_url        = "https://oidc.eks.${var.region}.amazonaws.com/id/${module.eks.cluster_id}"
  oidc_fully_qualified_subjects = ["system:serviceaccount:kube-system:aws-node"]

  role_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
    "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  ]

  tags = var.tags
}