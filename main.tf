module "vpc" {
  source       = "./modules/vpc"
  vpc-cloud-id = module.vpc.vpc-cloud-id
  sg-tags = {
    "Name"      = "vpc"
    "Terraform" = true
  }
}

module "subnet-1" {
  source            = "./modules/subnet"
  vpc-cloud-id      = module.vpc.vpc-cloud-id
  availability-zone = "${var.aws_region}a"
  cidr-block        = "10.0.1.0/24"
}

module "subnet-2" {
  source            = "./modules/subnet"
  vpc-cloud-id      = module.vpc.vpc-cloud-id
  availability-zone = "${var.aws_region}b"
  cidr-block        = "10.0.2.0/24"
}


module "ec2-vm-1" {
  source    = "./modules/ec2"
  subnet_id = module.subnet-1.subnet_id
  sg_groups = [module.vpc.sg-group]
  ec2_tags = {
    "Name"      = "ec2-vm-1"
    "Terraform" = true
  }
}


module "ec2-vm-2" {
  source    = "./modules/ec2"
  subnet_id = module.subnet-2.subnet_id
  sg_groups = [module.vpc.sg-group]
  ec2_tags = {
    "Name"      = "ec2-vm-2"
    "Terraform" = true
  }
}

module "internet-gateway" {
  source       = "./modules/ig"
  vpc-cloud-id = module.vpc.vpc-cloud-id
  tags = {
    "Name"      = "internet gateway"
    "Terraform" = true
  }
}

module "route-tables" {
  source              = "./modules/route-table"
  internet_gateway_id = module.internet-gateway.internet_gateway
  subnet_ids          = [module.subnet-1.subnet_id, module.subnet-2.subnet_id]
  vpc-cloud-id        = module.vpc.vpc-cloud-id
  tags = {
    "Name"      = "route-tables"
    "Terraform" = true
  }
}