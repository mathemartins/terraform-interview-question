data "aws_ami" "amazon_linux_2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  owners = ["amazon"]
}


resource "aws_instance" "ec2-server" {
  ami           = data.aws_ami.amazon_linux_2.id
  subnet_id     = var.subnet_id
  instance_type = "t2.micro"

  security_groups = var.sg_groups

  tags = var.ec2_tags
}