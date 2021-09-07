output "name" {
  value = aws_s3_bucket.this.bucket
  description = "Name of the s3 bucket"
}

output "arn" {
  value = aws_s3_bucket.this.arn
  description = "ARN of the s3 bucket"
}
