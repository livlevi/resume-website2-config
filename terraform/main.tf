module "vpc" {
    source = "./vpc"

    vpc_cidr_mod = var.vpc_cidr
    subnet_range_01_mod = var.subnet_range_01
    subnet_range_02_mod = var.subnet_range_02
    subnet_range_03_mod = var.subnet_range_03
    subnet_range_04_mod = var.subnet_range_04
}