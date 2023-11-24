data "aws_key_pair" "ressite_kp" {
    key_name = "res_keypair"
    include_public_key = true
}
