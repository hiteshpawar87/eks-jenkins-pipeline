provider "aws" {
  region = "ap-south-1"
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "jenkins-eks"
  cluster_version = "1.29"
  vpc_id          = "your-vpc-id"
  subnets         = ["subnet-abc", "subnet-def"]

  node_groups = {
    default = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_type    = "t3.medium"
    }
  }

  tags = {
    Environment = "dev"
    Project     = "jenkins-eks"
  }
}
