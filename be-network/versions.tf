terraform {
  required_version = ">= 1.16.0" # ephemeral resources need >= 1.10

  cloud {
    organization = "Sandar-Cloud-Lab"

    workspaces {
      project = "VCS-OIDC"
      name    = "be-network-ws"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

#change version to 1.16.0