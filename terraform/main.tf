module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"

  cluster_name    = "devops-project-cluster"
  cluster_version = "1.29"

cluster_endpoint_public_access = true
  cluster_endpoint_private_access = false
  cluster_endpoint_public_access_cidrs = ["0.0.0.0/0"]

  vpc_id     = "vpc-03087d0af010d0934"

  subnet_ids = [
    "subnet-022fdfefbc529986a",
    "subnet-0571c6128075544ce"
  ]

  eks_managed_node_groups = {
    default = {
      instance_types = ["t3.medium"]

      min_size     = 1
      max_size     = 2
      desired_size = 1
    }
  }
}
