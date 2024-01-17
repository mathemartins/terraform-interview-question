output "public_ip" {
  value = aws_instance.ec2-server.public_ip
}

output "public_dns" {
  value = aws_instance.ec2-server.public_dns
}
