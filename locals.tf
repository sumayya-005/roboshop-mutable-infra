locals {
  private_subnets = lookup(lookup({ for k,v  in module.vpc.private_subnets : k.subnets => v.subnets } , "subnets", null), "apps" , null)
}
