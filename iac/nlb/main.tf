
terraform {
  required_version = ">= 1.0.5"
  backend "s3" {
    bucket = "nlb-devops-tf-backend"
    key    = "nlb"
    region = "us-east-2"
  }
}

provider "aws" {
  region = var.aws_region
}
resource "aws_lb" "devops-nlb" {
  name               = "devops-nlb"
  internal           = false
  load_balancer_type = "network"
  subnets            = ["subnet-0bd64f7838239b85b","subnet-075c66348678fa72a"]

  enable_deletion_protection = false

  tags = {
    Environment = "production"
  }
}
