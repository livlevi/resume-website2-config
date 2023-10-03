resource "aws_security_group" "allow_http_https" {
    name = "allow web traffic"
    description = "Allow HTTP/S traffic to subnet"

    vpc_id = aws_vpc.res_site_vpc.id
} 

resource "aws_vpc_security_group_ingress_rule" "ssh" {
  security_group_id = aws_security_group.allow_http_https.id
  from_port = 22
  to_port = 22
  ip_protocol = "tcp"
  cidr_ipv4  = "0.0.0.0/0" # Allow HTTP traffic from any source 
}

resource "aws_vpc_security_group_ingress_rule" "http" {
  security_group_id = aws_security_group.allow_http_https.id
  from_port         = 80
  to_port           = 80
  ip_protocol = "tcp"
  cidr_ipv4  = "0.0.0.0/0" # Allow HTTP traffic from any source 
  
}

resource "aws_vpc_security_group_ingress_rule" "https" {
  security_group_id = aws_security_group.allow_http_https.id
  from_port         = 443
  to_port           = 443
  ip_protocol        = "tcp"
  cidr_ipv4       = "0.0.0.0/0" # Allow HTTPS traffic from any source 
}

resource "aws_vpc_security_group_egress_rule" "egress" {
  security_group_id = aws_security_group.allow_http_https.id
  # from_port         = 0
  # to_port           = 0
  ip_protocol =  "-1" # All protocols
  cidr_ipv4       = "0.0.0.0/0"
}
