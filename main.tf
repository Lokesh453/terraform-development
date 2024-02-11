provider "aws" {
  region = "us-east-2"
  
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_id_value = "ami-0c20d88b0021158c6"
  instance_type_value = "t2.micro"
  
}

module "aws_s3_bucket" {
  source = "./modules/s3_bucket"
  aws_s3_bucket_name = "s3-with-tf"
  env_Name = "Dev"
 
}


#use dynamodb to hold the lock info
resource "aws_dynamodb_table" "dynamodb_to_store_lock_info" {
  billing_mode     = "PAY_PER_REQUEST"
  hash_key         = "LockID"
  name             = "dynamodb_to_store_lock_info"


  attribute {
    name = "LockID"
    type = "S"
  }

}