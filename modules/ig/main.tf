resource "aws_internet_gateway" "network_gateway" {
  vpc_id = var.vpc-cloud-id
  tags   = var.tags
}