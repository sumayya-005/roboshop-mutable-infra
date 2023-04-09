locals {
  private_subnets = { for k,v  in module.vpc.private_subnets : k.subnets => v.subnets }
}