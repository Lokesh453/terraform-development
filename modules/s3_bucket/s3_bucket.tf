resource "aws_s3_bucket" "example" {
  bucket = var.aws_s3_bucket_name

  tags = {
    Name        = var.aws_s3_bucket_name
    Environment = var.env_Name
  }
}