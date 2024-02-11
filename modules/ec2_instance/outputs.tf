output "public_ip_address_value" {
  value = aws_instance.my_first_instance.public_ip
}