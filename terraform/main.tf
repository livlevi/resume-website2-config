module "vpc" {
    source = "./vpc"

    vpc_cidr_mod = var.vpc_cidr
    subnet_range_01_mod = var.subnet_range_01
    subnet_range_02_mod = var.subnet_range_02
    subnet_range_03_mod = var.subnet_range_03
    subnet_range_04_mod = var.subnet_range_04
}

module "ec2" {
    source = "./ec2"

    ec2_sg_id = module.vpc.ec2_sg_id_output
    ec2_subnet_id = module.vpc.ec2_subnet_id_output
}
