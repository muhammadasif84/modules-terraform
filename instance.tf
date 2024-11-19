#EC2 MODULE
module "mywebserver" {
  source        = "./modules/webserver"
  key           = file("${path.module}/id_rsa.pub")
  image_id      = var.image_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = module.vpc.subnet_ID
}

#VPC MODULE
module "vpc" {
  source              = "./modules/vpc"
  cidr_block          = var.cidr_block
  instance_tenancy    = var.instance_tenancy
  public_subnet_cidrs = ["10.0.1.0/24"]
  availability_zone   = ["us-east-1a"]
}











