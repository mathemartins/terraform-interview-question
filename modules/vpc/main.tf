resource "aws_vpc" "vpc-cloud" {
  cidr_block = var.vpc-cidr-block
  tags       = var.sg-tags
}


resource "aws_security_group" "vpc-cloud-sg" {
  name   = "vpc-cloud-sg-${terraform.workspace}"
  vpc_id = aws_vpc.vpc-cloud.id

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "tcp"
    from_port   = 80
    to_port     = 80
    description = "Allow port 80"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "tcp"
    from_port   = 443
    to_port     = 443
    description = "Allow port 80"
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.sg-tags
}