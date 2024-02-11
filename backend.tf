terraform {
  backend "s3" {
    bucket = "s3-with-tf"
    key    = "lokesh/terraform-lock/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "dynamodb_to_store_lock_info"
  }
}
