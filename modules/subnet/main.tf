
resource "aws_subnet" "vpc-cloud-subnet" {
  vpc_id            = var.vpc-cloud-id
  cidr_block        = var.cidr-block
  availability_zone = var.availability-zone
}