resource "aws_s3_bucket" "s3_bucket_with_tf" {
  bucket = var.aws_s3_bucket_name

  tags = {
    Name        = var.aws_s3_bucket_name
    Environment = var.env_Name
  }
}