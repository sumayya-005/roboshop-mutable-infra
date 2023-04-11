env = "dev"

vpc = {
  vpc1 = {
    cidr_block            = "10.0.0.0/16"
    additional_cidr_block = []
    private_subnets = {
      frontend = {
        cidr_block = ["10.0.0.0/24", "10.0.1.0/24"]
        name       = "frontend"
        attach_to  = "ngw"
      }
      database = {
        cidr_block = ["10.0.2.0/24", "10.0.3.0/24"]
        name       = "database"
        attach_to  = "ngw"
      }
      app = {
        cidr_block = ["10.0.4.0/24", "10.0.5.0/24"]
        name       = "app"
        attach_to  = "ngw"
      }
    }
    public_subnets = {
      public = {
        cidr_block = ["10.0.255.0/24", "10.0.254.0/24"]
        name       = "public"
        attach_to  = "igw"
      }
    }
    subnet_availability_zones = ["us-east-1a", "us-east-1b"]
  }

}

management_vpc = {
  vpc_id = "vpc-069ccd388a5f86ff1"
  route_tables = "rtb-039ab10ca18c7f904"
  vpc_cidr = "172.31.0.0/16"
}

docdb = {
  db1 ={
    engine = "docdb"
  }
}

rds = {
 db1 = {
   allocated_storage    = 10
   engine               = "mysql"
   engine_version       = "5.7.mysql_aurora.2.10.2"
   instance_class       = "db.t3.micro"
   skip_final_snapshot  = true
 }
}

elasticache = {
    ec1 = {
      engine          = "redis"
      engine_version  = "6.2"
      node_type       = "cache.t3.micro"
      num_cache_nodes = 1
    }
}

rabbitmq = {
  mq1 = {
    instance_type ="t3.micro"
  }
}
