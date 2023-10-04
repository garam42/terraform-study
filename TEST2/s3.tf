resource "aws_s3_bucket" "kgr-2-tfstate" {
  bucket = "kgr-2-tfstate"
}
resource "aws_s3_bucket_versioning" "s3_versioning" {
  bucket = aws_s3_bucket.kgr-2-tfstate.id
  versioning_configuration {
    status = "Enabled"
  }
}
output "s3_bucket_arn" {
  value       = aws_s3_bucket.kgr-2-tfstate.arn
  description = "The ARN of the S3 bucket"
}