resource "aws_vpc" "main" {
  source = "./vendors/modules/vpc"
  vpc    = var.vpc
  env    = var.env
}