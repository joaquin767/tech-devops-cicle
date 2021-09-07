terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.33.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

module "nlb-tf-backend" {
  source = "../."

  name = "nlb-devops-tf-backend"

  enable_versioning = false
  acl               = "private"
  force_destroy     = true

  tags = {
    ProjectName = "DevOps Cicle"
    owner = "Joaquin Veliz"
  }
}
