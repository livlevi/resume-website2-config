resource "aws_vpc" "res_site_vpc" {
    cidr_block = var.vpc_cidr_mod
    enable_dns_hostnames = true
    enable_dns_support = true
    instance_tenancy = "default"
    tags = {
      Name = "ressite vpc"
    }
}

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.res_site_vpc.id
}

resource "aws_route_table" "internet_access" {
    vpc_id = aws_vpc.res_site_vpc.id

    route { 
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
  
}