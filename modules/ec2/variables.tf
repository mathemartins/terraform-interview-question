variable "ec2_tags" {
  description = "Instance Tags"
  type        = map(string)
}

variable "sg_groups" {
  description = "Security Groups"
  type        = list(string)
}

variable "subnet_id" {
  description = "Subnet ID for the ec2 instance"
  type        = string
}