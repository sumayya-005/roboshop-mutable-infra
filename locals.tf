locals {
  app_private_subnets = lookup(lookup(lookup(lookup({ for k,v  in module.vpc.private_subnets : k.subnets => v.subnets } ,
    "subnets", null), "apps" , null),"subnets",null),"id" ,null)
  database_private_subnets = lookup(lookup(lookup(lookup({ for k,v  in module.vpc.private_subnets : k.subnets => v.subnets } ,
    "subnets", null), "database" , null),"subnets",null),"id" ,null)
  frontend_private_subnets = lookup(lookup(lookup(lookup({ for k,v  in module.vpc.private_subnets : k.subnets => v.subnets } ,
    "subnets", null), "frontend" , null),"subnets",null),"id" ,null)
  public_subnets = lookup({ for k,v  in module.vpc.public_subnets : k.subnets => v.subnets } , "subnets", null)
}

output "public_subnets" {
  value = local.public_subnets
}