resource "aws_subnet" "subnet_01" {
    vpc_id = aws_vpc.res_site_vpc.id
    cidr_block = var.subnet_range_01_mod

    tags = {
        Name = "res-sub-01"
    }
}

resource "aws_route_table_association" "sub_01_rta" {
    subnet_id = aws_subnet.subnet_01.id
    route_table_id = aws_route_table.internet_access.id

}

resource "aws_subnet" "subnet_02" {
    vpc_id = aws_vpc.res_site_vpc.id
    cidr_block = var.subnet_range_02_mod

    tags = {
        Name = "res-sub-02"
    }
}

resource "aws_route_table_association" "sub_02_rta" {
    subnet_id = aws_subnet.subnet_02.id
    route_table_id = aws_route_table.internet_access.id

}

resource "aws_subnet" "subnet_03" {
    vpc_id = aws_vpc.res_site_vpc.id
    cidr_block = var.subnet_range_03_mod

    tags = {
        Name = "res-sub-03"
    }
}

resource "aws_route_table_association" "sub_03_rta" {
    subnet_id = aws_subnet.subnet_03.id
    route_table_id = aws_route_table.internet_access.id

}

resource "aws_subnet" "subnet_04" {
    vpc_id = aws_vpc.res_site_vpc.id
    cidr_block = var.subnet_range_04_mod

    tags = {
        Name = "res-sub-04"
    }
}

resource "aws_route_table_association" "sub_04_rta" {
    subnet_id = aws_subnet.subnet_04.id
    route_table_id = aws_route_table.internet_access.id

}