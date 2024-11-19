#####INSTANCE OutPuts##########
output "public-ip" {
  value = module.mywebserver.publicIP
}

######VPC Module OutPuts########
output "vpc_id" {
  value = module.vpc.vpc_ID
}

######SUBNETS OutPuts##########
output "subnet_id" {
  value = module.vpc.subnet_ID
}




