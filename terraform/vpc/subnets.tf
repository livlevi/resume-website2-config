resource "aws_subnet" "subnet_01" {
    vpc_id = aws_vpc.res_site_vpc.id
    cidr_block = var.subnet_range_01_mod
}

resource "aws_route_table_association" "sub_01_rta" {
    subnet_id = aws_subnet.subnet_01.id
    route_table_id = aws_route_table.internet_access.id
}

resource "aws_subnet" "subnet_02" {
    vpc_id = aws_vpc.res_site_vpc.id
    cidr_block = var.subnet_range_02_mod
}

resource "aws_subnet" "subnet_03" {
    vpc_id = aws_vpc.res_site_vpc.id
    cidr_block = var.subnet_range_03_mod
}

resource "aws_subnet" "subnet_04" {
    vpc_id = aws_vpc.res_site_vpc.id
    cidr_block = var.subnet_range_04_mod
}