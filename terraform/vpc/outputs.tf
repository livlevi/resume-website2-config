output "ec2_sg_id_output" {
    value = aws_security_group.allow_http_https.id
}

output "ec2_subnet_id_output" {
    value = aws_subnet.subnet_01.id
}