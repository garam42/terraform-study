resource "aws_dynamodb_table" "kgr-2-dynamodb" {
  name         = "kgr-2-terra-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.kgr-2-dynamodb.name
  description = "The name of the DynamoDB table"
}