resource "aws_s3_bucket" "this" {
  bucket        = var.name
  acl           = var.acl
  force_destroy = var.force_destroy

  versioning {
    enabled = var.enable_versioning
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = var.tags
}
# terraform {
#   backend "s3" {
#     bucket = "mybucket"
#     key    = "path/to/my/key"
#     region = "us-east-2"
#   }
# }