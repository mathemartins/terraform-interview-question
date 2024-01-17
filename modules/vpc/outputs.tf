output "vpc-cloud-id" {
  value = aws_vpc.vpc-cloud.id
}


output "sg-group" {
  value = aws_security_group.vpc-cloud-sg.id
}