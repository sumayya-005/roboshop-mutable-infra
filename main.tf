module "vpc"  {
  source = "./vendor/modules/vpc"
  vpc    = var.vpc
  env    = var.env
  management_vpc = var.management_vpc
}

module "docdb"  {
  source   = "./vendor/modules/docdb"
  docdb    = var.docdb
  env      = var.env
 subnets   = local.database_private_subnets[*].id
}

output "app_private_subnets" {
  value = local.private_subnets[*].id
}