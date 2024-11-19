#VPC Resource
resource "aws_vpc" "vpc-module" {
  cidr_block = var.cidr_block
 instance_tenancy = var.instance_tenancy
  tags = {
    Name = "vpc-module"
  }
}

#Subnets Resources
resource "aws_subnet" "pub-subnet" {
  vpc_id = aws_vpc.vpc-module.id
  cidr_block =  "10.0.1.0/24" 
  availability_zone =  "us-east-1a"   

  tags = {
    Name ="pub-subnet"
  }
}

output "subnet_ID" {
  value = aws_subnet.pub-subnet.id
}

