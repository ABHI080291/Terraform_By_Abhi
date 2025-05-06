resource "aws_dynamodb_table" "Terra_Dynamodb" {
  name = "Terra_Dynamodb"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

attribute {
  name = "LockID"
  type = "s"
}
}