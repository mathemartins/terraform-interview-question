provider "aws" {
  region     = var.aws_region
  access_key = ""
  secret_key = ""

  default_tags {
    tags = {
      Environment = terraform.workspace
      Owner       = "Rack Finance"
      Provisioned = "Terraform"
    }
  }
}