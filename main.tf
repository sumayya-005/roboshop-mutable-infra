resource "aws_vpc" "main" {
  source = "./vendor/modules/vpc"
  cidr_block = var.vpc_cidr
}

