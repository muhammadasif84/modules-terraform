###########VPC VARIABLES################
variable "cidr_block" {
  type = string
}
variable "instance_tenancy" {
  type = string
}

##########SUBNETS VARIABLES############
variable "public_subnet_cidrs" {
  description = "public-subnet"
  type        = list(string)
}
variable "availability_zone" {
  description = "AZ FOR Subnet"
  type        = list(string)
}


