variable "vpc-cloud-id" {
  description = "VPC Cloud ID from vpc module"
  type        = string
}

variable "cidr-block" {
  description = "Subnet CIDR block"
  type        = string
}

variable "availability-zone" {
  description = "Availability Zones"
  type        = string
}

