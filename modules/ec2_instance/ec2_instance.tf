provider "aws" {
  region = "us-east-2"

}


resource "aws_instance" "my_first_instance" {
  ami           = var.ami_id_value
  instance_type = var.instance_type_value

}
