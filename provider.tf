terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.35"
    }
  }
  required_version = ">= 1.1.0"

  cloud {
    organization = "FIAP-SOAT-8-G6"

    workspaces {
      name = "vitorrafael-workspace"
    }
  }
}

provider "aws" {
  region = var.regionDefault
}