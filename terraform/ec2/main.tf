resource "aws_instance" "ressite_instance" {
    ami = "ami-067d1e60475437da2"
    instance_type = "t2.micro"
    subnet_id = var.ec2_subnet_id
    associate_public_ip_address = true
    key_name = data.aws_key_pair.ressite_kp.key_name
    security_groups = [var.ec2_sg_id]  
}
