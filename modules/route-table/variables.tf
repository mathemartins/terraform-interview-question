variable "subnet_ids" {
  description = "Subnet ID to use for the routing"
  type        = list(string)
}

variable "internet_gateway_id" {
  description = "The internet gateway_id"
  type        = string
}

variable "tags" {
  description = "Tags for subnet"
  type        = map(string)
}

variable "vpc-cloud-id" {
  description = "The vpc cloud id "
  type        = string
}