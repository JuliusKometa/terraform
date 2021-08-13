output "PublicIp" {
  value = aws_instance.Victor.public_ip
}

output "privateip" {
  value = aws_instance.Victor.private_ip
}