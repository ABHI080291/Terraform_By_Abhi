terraform {
  backend "s3" {
    bucket = "abhianawrs"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}
