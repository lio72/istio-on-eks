provider "aws" {
  region = "us-east-1"
}

provider "kubernetes" {
  host                   = "https://69750B78DC9630EF1793AB15A8DB77BC.gr7.us-east-1.eks.amazonaws.com"
  cluster_ca_certificate = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJRFFRMVBvVkx5aEl3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRFeU1EZ3hORE00TWpCYUZ3MHpOVEV5TURZeE5EUXpNakJhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUMvL3l1dmhiUzBkNXJvQWRVbmVlYThHOWdleFdoWGhEd0F3ekk3d1Y5YXNHNlJ5ZGdWaVBjaHJHclgKQzdkV0FSQkFJZ3J2d1NzT0hkejA1NTg1dGRWRzNhK2tUU0RxV0tuZWE5VlZhdDZCVHNjRjc5WGp5WENqVENjcQpsS1lTZTM3TTg2VnZuZlMvVVJDbG5Ndk1pdEdGUU11eGoyY2lycitkaUNYbkVQd3pzZXV5V1I5bCtPQ2c0RVZCCnNLMUprNUdCbjFuL1doK0duWnNSeVJINm40REp6alZMK2syOHplWmw4bElySVhIdk1jWFEyalZ0YWIwajFLS1IKNVo0STA5SURTU0lIenZwUXBldHRjb2h2ZGFVT083dmp0ekFZZ0x0SzNmTlkwcndwVnYxc3Jwa1Z6WnZaOE1WeApzZEU5ZDBFb243cDRWVUtTSVVSZkRBZ3dvZmlqQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSWHRXZVhpT28wSXVMb0F3VEFNZUdEc3hKUFB6QVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQTBrcm4rbGU1MgpZeFM1bEdwOUVpWS9DbVFTdUt1VE1jQzR1dzdTSzNTN2RlVHMyOXZaeUZmOUx0Rks0VDZWY1F2SVZJMGlQdjNRCjVUU3ZGdWlyeHRCUmd0ckVra3A4d1VwanhDaFkrKzhtYlNxeHFJS0xURG1HOGVudVpna0g5L1RwVE5XZmNqMFcKWUpFRWpXUEJlVlNlN0g2YW5PbFNuUDdhZjd0TlBxRGtsWHlsS0J2dDRkV0J2STV0YmV5WXNaVU8zbHFoVEdsVApXbm9YdFBhTUlOVjBleGxVd1czemVtUGRwY1dseWpYcGlySmFhdVhsREU5bjcxZm1aWjBIZlFha0s4K1N5VS9SCkxTRXZYTGhYVEZaMERlYVVPcm01SGZqVnBLNzFBUzgxNVRYRitwaXRnbWdPZ3FTNkhaOEk5UHJIYnRudVhRV08KRVZhSEdvYzdrb0ZOCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"

  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    command     = "aws"
    # This requires the awscli to be installed locally where Terraform is executed
    args = ["eks", "get-token", "--cluster-name", "eks-test"]
  }
}

provider "helm" {
  kubernetes {
    host                   = "https://69750B78DC9630EF1793AB15A8DB77BC.gr7.us-east-1.eks.amazonaws.com"
    cluster_ca_certificate = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJRFFRMVBvVkx5aEl3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRFeU1EZ3hORE00TWpCYUZ3MHpOVEV5TURZeE5EUXpNakJhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUMvL3l1dmhiUzBkNXJvQWRVbmVlYThHOWdleFdoWGhEd0F3ekk3d1Y5YXNHNlJ5ZGdWaVBjaHJHclgKQzdkV0FSQkFJZ3J2d1NzT0hkejA1NTg1dGRWRzNhK2tUU0RxV0tuZWE5VlZhdDZCVHNjRjc5WGp5WENqVENjcQpsS1lTZTM3TTg2VnZuZlMvVVJDbG5Ndk1pdEdGUU11eGoyY2lycitkaUNYbkVQd3pzZXV5V1I5bCtPQ2c0RVZCCnNLMUprNUdCbjFuL1doK0duWnNSeVJINm40REp6alZMK2syOHplWmw4bElySVhIdk1jWFEyalZ0YWIwajFLS1IKNVo0STA5SURTU0lIenZwUXBldHRjb2h2ZGFVT083dmp0ekFZZ0x0SzNmTlkwcndwVnYxc3Jwa1Z6WnZaOE1WeApzZEU5ZDBFb243cDRWVUtTSVVSZkRBZ3dvZmlqQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSWHRXZVhpT28wSXVMb0F3VEFNZUdEc3hKUFB6QVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQTBrcm4rbGU1MgpZeFM1bEdwOUVpWS9DbVFTdUt1VE1jQzR1dzdTSzNTN2RlVHMyOXZaeUZmOUx0Rks0VDZWY1F2SVZJMGlQdjNRCjVUU3ZGdWlyeHRCUmd0ckVra3A4d1VwanhDaFkrKzhtYlNxeHFJS0xURG1HOGVudVpna0g5L1RwVE5XZmNqMFcKWUpFRWpXUEJlVlNlN0g2YW5PbFNuUDdhZjd0TlBxRGtsWHlsS0J2dDRkV0J2STV0YmV5WXNaVU8zbHFoVEdsVApXbm9YdFBhTUlOVjBleGxVd1czemVtUGRwY1dseWpYcGlySmFhdVhsREU5bjcxZm1aWjBIZlFha0s4K1N5VS9SCkxTRXZYTGhYVEZaMERlYVVPcm01SGZqVnBLNzFBUzgxNVRYRitwaXRnbWdPZ3FTNkhaOEk5UHJIYnRudVhRV08KRVZhSEdvYzdrb0ZOCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"

    exec {
      api_version = "client.authentication.k8s.io/v1beta1"
      command     = "aws"
      # This requires the awscli to be installed locally where Terraform is executed
      args = ["eks", "get-token", "--cluster-name", "eks-test"]
    }
  }
}

data "aws_availability_zones" "available" {}

locals {
  name   = basename(path.cwd)
  region = "us-east-1"

  vpc_cidr = "10.0.0.0/16"
  azs      = slice(data.aws_availability_zones.available.names, 0, 3)

  istio_chart_url     = "https://istio-release.storage.googleapis.com/charts"
  istio_chart_version = "1.22.0"

  tags = {
    Blueprint  = local.name
    GithubRepo = "github.com/aws-ia/terraform-aws-eks-blueprints"
  }
}

################################################################################
# Cluster
################################################################################

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.11"

  cluster_name                   = local.name
  cluster_version                = "1.32"
  cluster_endpoint_public_access = true

  # Give the Terraform identity admin access to the cluster
  # which will allow resources to be deployed into the cluster
  enable_cluster_creator_admin_permissions = true

  cluster_addons = {
    coredns    = {}
    kube-proxy = {}
    vpc-cni    = {}
  }

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  eks_managed_node_groups = {
    initial = {
      instance_types = [" t2.medium"]

      min_size     = 1
      max_size     = 5
      desired_size = 2
    }
  }

  #  EKS K8s API cluster needs to be able to talk with the EKS worker nodes with port 15017/TCP and 15012/TCP which is used by Istio
  #  Istio in order to create sidecar needs to be able to communicate with webhook and for that network passage to EKS is needed.
  node_security_group_additional_rules = {
    ingress_15017 = {
      description                   = "Cluster API - Istio Webhook namespace.sidecar-injector.istio.io"
      protocol                      = "TCP"
      from_port                     = 15017
      to_port                       = 15017
      type                          = "ingress"
      source_cluster_security_group = true
    }
    ingress_15012 = {
      description                   = "Cluster API to nodes ports/protocols"
      protocol                      = "TCP"
      from_port                     = 15012
      to_port                       = 15012
      type                          = "ingress"
      source_cluster_security_group = true
    }
  }

  tags = local.tags
}

################################################################################
# EKS Blueprints Addons
################################################################################

resource "kubernetes_namespace_v1" "istio_system" {
  metadata {
    name = "istio-system"
  }
}

module "eks_blueprints_addons" {
  source  = "aws-ia/eks-blueprints-addons/aws"
  version = "~> 1.16"

  cluster_name      = "test-eks"
  cluster_endpoint  = "https://69750B78DC9630EF1793AB15A8DB77BC.gr7.us-east-1.eks.amazonaws.com"
  cluster_version   = "1.33"
  oidc_provider_arn = "https://oidc.eks.us-east-1.amazonaws.com/id/69750B78DC9630EF1793AB15A8DB77BC"

  # This is required to expose Istio Ingress Gateway
  enable_aws_load_balancer_controller = true

  helm_releases = {
    istio-base = {
      chart         = "base"
      version        = "1.26.4"
      chart_version = local.istio_chart_version
      repository    = local.istio_chart_url
      name          = "istio-base"
      namespace     = kubernetes_namespace_v1.istio_system.metadata[0].name
    }

    istio-cni = {
      chart         = "cni"
      chart_version = local.istio_chart_version
      repository    = local.istio_chart_url
      name          = "istio-cni"
      namespace     = kubernetes_namespace_v1.istio_system.metadata[0].name

      set = [
        {
          name  = "profile"
          value = "ambient"
        }
      ]
    }

    istiod = {
      chart         = "istiod"
      chart_version = local.istio_chart_version
      repository    = local.istio_chart_url
      name          = "istiod"
      namespace     = kubernetes_namespace_v1.istio_system.metadata[0].name
      version        = "1.26.4"
      set = [
        {
          name  = "meshConfig.accessLogFile"
          value = "/dev/stdout"
        },
        {
          name  = "profile"
          value = "ambient"
        }
      ]
    }

    ztunnel = {
      chart         = "ztunnel"
      chart_version = local.istio_chart_version
      repository    = local.istio_chart_url
      name          = "ztunnel"
      namespace     = kubernetes_namespace_v1.istio_system.metadata[0].name
    }

    istio-ingress = {
      chart            = "gateway"
      chart_version    = local.istio_chart_version
      repository       = local.istio_chart_url
      name             = "istio-ingress"
      namespace        = "istio-ingress" # per https://github.com/istio/istio/blob/master/manifests/charts/gateways/istio-ingress/values.yaml#L2
      create_namespace = true

      values = [
        yamlencode(
          {
            labels = {
              istio = "ingressgateway"
            }
            service = {
              annotations = {
                "service.beta.kubernetes.io/aws-load-balancer-type"            = "external"
                "service.beta.kubernetes.io/aws-load-balancer-nlb-target-type" = "ip"
                "service.beta.kubernetes.io/aws-load-balancer-scheme"          = "internet-facing"
                "service.beta.kubernetes.io/aws-load-balancer-attributes"      = "load_balancing.cross_zone.enabled=true"
              }
            }
          }
        )
      ]
    }
  }

  tags = local.tags
}

################################################################################
# Supporting Resources
################################################################################

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"

  name = local.name
  cidr = local.vpc_cidr

  azs             = local.azs
  private_subnets = [for k, v in local.azs : cidrsubnet(local.vpc_cidr, 4, k)]
  public_subnets  = [for k, v in local.azs : cidrsubnet(local.vpc_cidr, 8, k + 48)]

  enable_nat_gateway = true
  single_nat_gateway = true

  public_subnet_tags = {
    "kubernetes.io/role/elb" = 1
  }

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
  }

  tags = local.tags
}
