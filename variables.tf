##########Access Keys#######################
variable "access-key" {
  type = string
}
variable "secret-key" {
  type = string
}
#########REGION VARIABLES##################
variable "region" {
  type = string
}

###########INSTANCE VARIABLES################
variable "image_id" {

}
variable "instance_type" {

}
############KEY-PAIR VARIABLES##############
variable "key" {

}
variable "key_name" {
  type = string
}
##############VPC VARIABLES#################
variable "cidr_block" {
  type = string
}
variable "instance_tenancy" {
  type = string
}
##########SUBNETS VARIABLES##############
variable "public_subnet_cidrs" {
  type = list(string)
}
variable "availability_zone" {
  description = "AZ FOR Subnet"
  type        = list(string)
}

