module "vpc"  {
  source = "./vendor/modules/vpc"
  vpc    = var.vpc
  env    = var.env
  management_vpc = var.management_vpc
}

#module "docdb"  {
#  source   = "./vendor/modules/docdb"
#  docdb    = var.docdb
#  env      = var.env
# subnets   = lookup (local.subnets, "database" ,null)
#}

output "app_private_subnets" {
  value = lookup(lookup(local.private_subnets, "subnets", null), "apps")
}