vpc = {
  vpc1 = {
    cidr_block = "10.0.0.0/16"
    additional_cidr_block = []
    subnets = {
      frontend = {
        cidr_block = ["10.0.0.0/24", "10.0.1.0/24"]
        name = "frontend"
      }
      database = {
        cidr_block = ["10.0.2.0/24", "10.0.3.0/24"]
        name = "database"
      }
      app = {
        cidr_block = ["10.0.4.0/24", "10.0.5.0/24"]
        name ="app"
      }
    }
    subnet_availability_zones = ["us-east-1a" , "us-east-1b"]
  }
}

management_vpc = {
  vpc_id = "vpc-069ccd388a5f86ff1"
  route_tables =
}
env = "dev"