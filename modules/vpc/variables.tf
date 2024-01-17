variable "vpc-cidr-block" {
  description = "The VPC CIDR block address"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc-cloud-id" {
  description = "VPC Cloud ID security group"
  type        = string
}

variable "sg-tags" {
  description = "SG tags for vpc cloud"
  type        = map(string)
}