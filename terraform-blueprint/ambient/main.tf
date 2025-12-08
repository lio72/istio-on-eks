provider "aws" {
  region = "us-east-1"
}

provider "kubernetes" {
  host                   = "https://81889F7A0E27A3A3A2D6B2F5EDF4F7CD.gr7.us-east-1.eks.amazonaws.com"
  cluster_ca_certificate = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJS3krMWdMUi9GRmt3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRFeE1EWXhNak0zTURoYUZ3MHpOVEV4TURReE1qUXlNRGhhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUNnOCtVUldBUW1SeW5oNHFZdFNLcldFbDI3UEZrS1BNci84ZDdTSXZJbzhESmJCZVVnV25zWXAwSUsKWnVQcUZVTFVCNndYSmE5b0tuS2swbHZPaDdBcms5L1FEakZKSmtlTEUyemY2aFovUUZ2NXgwVFFUUTJwOXdLZQpiSW84RUZRRlhrQS96YTdwNVFrSHZ6elRYQ1o5OFAybHNyRlVCcnJoZktrQlJxZW1WbEFJWjhlcVZwVFdWaUpFCmxhZ3lySk5uVTlaOFdJbXJEdWNzSkE1eDA1RFI2SmszWU9VdmRFcjBXWGl4VjVGN2d2bitKSnFlZTFtQzBYTGcKZTJRYzh5NHpCYWZuRXV1bWd6UU1tQjBuYTFzZDdlYzk3S0d0Ym5wYU1ndklNQ0FhRmRINE5pa1ZPcWV3UlVOVApiVGsxSXZIK2tmQkYyUTlRSEdZcEQ3THlWa3VQQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJRN01RMVpiYUtaZjM1L3B5ZDNWQ0JWaW9mZEpqQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQUM3cGl0Vm1qSQp4K3U4L1IrOTVpU2RCYnBBaWlyRDdhRjE5SStaY2ZjSk90MENjWVFxalo3UlhSWEhGbWxSKzZ3U2JqT2ppanFBCkV3V3VxSFUxcytaZmNjNDhNL0M5RU93Wmhvb1ByMkNhdk1UV1oxbXovd2J4UDFiZTFOZEN3cS9jK1RVYkVIUHQKekovREhvMjNLM3puYXNpZ1JZK3Z3UEp2TzdERE5EREJPcnIrUFVob1JvWk84WENOb0lsazRMMWZYbE1BajdtSQpDS2RtTEI2WG5UWWNUcFEvZm83OFkwSHBhSEcvMndaUDZQNytOZmgvd0lLb0tzZFUwN2FWVm4xSlpRWVFtTG16Cm51b09ZdFRKS21MMFJsdjNuQnRselRXUklnTHFHU055WUdNWEdHbWZ5T21JN1VYWWh0QkRxWUlaL3FEdU5PcTgKU1FsQkpRcUlJWlVnCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"

  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    command     = "aws"
    # This requires the awscli to be installed locally where Terraform is executed
    args = ["eks", "get-token", "--cluster-name", "eks-test"]
  }
}

provider "helm" {
  kubernetes {
    host                   = "https://81889F7A0E27A3A3A2D6B2F5EDF4F7CD.gr7.us-east-1.eks.amazonaws.com"
    cluster_ca_certificate = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJS3krMWdMUi9GRmt3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRFeE1EWXhNak0zTURoYUZ3MHpOVEV4TURReE1qUXlNRGhhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUUNnOCtVUldBUW1SeW5oNHFZdFNLcldFbDI3UEZrS1BNci84ZDdTSXZJbzhESmJCZVVnV25zWXAwSUsKWnVQcUZVTFVCNndYSmE5b0tuS2swbHZPaDdBcms5L1FEakZKSmtlTEUyemY2aFovUUZ2NXgwVFFUUTJwOXdLZQpiSW84RUZRRlhrQS96YTdwNVFrSHZ6elRYQ1o5OFAybHNyRlVCcnJoZktrQlJxZW1WbEFJWjhlcVZwVFdWaUpFCmxhZ3lySk5uVTlaOFdJbXJEdWNzSkE1eDA1RFI2SmszWU9VdmRFcjBXWGl4VjVGN2d2bitKSnFlZTFtQzBYTGcKZTJRYzh5NHpCYWZuRXV1bWd6UU1tQjBuYTFzZDdlYzk3S0d0Ym5wYU1ndklNQ0FhRmRINE5pa1ZPcWV3UlVOVApiVGsxSXZIK2tmQkYyUTlRSEdZcEQ3THlWa3VQQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJRN01RMVpiYUtaZjM1L3B5ZDNWQ0JWaW9mZEpqQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQUM3cGl0Vm1qSQp4K3U4L1IrOTVpU2RCYnBBaWlyRDdhRjE5SStaY2ZjSk90MENjWVFxalo3UlhSWEhGbWxSKzZ3U2JqT2ppanFBCkV3V3VxSFUxcytaZmNjNDhNL0M5RU93Wmhvb1ByMkNhdk1UV1oxbXovd2J4UDFiZTFOZEN3cS9jK1RVYkVIUHQKekovREhvMjNLM3puYXNpZ1JZK3Z3UEp2TzdERE5EREJPcnIrUFVob1JvWk84WENOb0lsazRMMWZYbE1BajdtSQpDS2RtTEI2WG5UWWNUcFEvZm83OFkwSHBhSEcvMndaUDZQNytOZmgvd0lLb0tzZFUwN2FWVm4xSlpRWVFtTG16Cm51b09ZdFRKS21MMFJsdjNuQnRselRXUklnTHFHU055WUdNWEdHbWZ5T21JN1VYWWh0QkRxWUlaL3FEdU5PcTgKU1FsQkpRcUlJWlVnCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"

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

# ################################################################################
# # Cluster
# ################################################################################

# module "eks" {
#   source  = "terraform-aws-modules/eks/aws"
#   version = "~> 20.11"

#   cluster_name                   = local.name
#   cluster_version                = "1.32"
#   cluster_endpoint_public_access = true

#   # Give the Terraform identity admin access to the cluster
#   # which will allow resources to be deployed into the cluster
#   enable_cluster_creator_admin_permissions = true

#   cluster_addons = {
#     coredns    = {}
#     kube-proxy = {}
#     vpc-cni    = {}
#   }

#   vpc_id     = module.vpc.vpc_id
#   subnet_ids = module.vpc.private_subnets

#   eks_managed_node_groups = {
#     initial = {
#       instance_types = [" t2.medium"]

#       min_size     = 1
#       max_size     = 5
#       desired_size = 2
#     }
#   }

#   #  EKS K8s API cluster needs to be able to talk with the EKS worker nodes with port 15017/TCP and 15012/TCP which is used by Istio
#   #  Istio in order to create sidecar needs to be able to communicate with webhook and for that network passage to EKS is needed.
#   node_security_group_additional_rules = {
#     ingress_15017 = {
#       description                   = "Cluster API - Istio Webhook namespace.sidecar-injector.istio.io"
#       protocol                      = "TCP"
#       from_port                     = 15017
#       to_port                       = 15017
#       type                          = "ingress"
#       source_cluster_security_group = true
#     }
#     ingress_15012 = {
#       description                   = "Cluster API to nodes ports/protocols"
#       protocol                      = "TCP"
#       from_port                     = 15012
#       to_port                       = 15012
#       type                          = "ingress"
#       source_cluster_security_group = true
#     }
#   }

#   tags = local.tags
# }

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
