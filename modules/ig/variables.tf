variable "tags" {
  description = "Tags attached to the internet gateway resource"
  type        = map(string)
}

variable "vpc-cloud-id" {
  description = "VPC Cloud ID resource"
  type        = string
}