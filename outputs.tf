###############################################
#  VPC ID                                     #
###############################################
output "vpc_id" {
  value = aws_vpc.development.id
}

###############################################
#  EC2 INSTANCE PUBLIC IP ADDRESS             #
###############################################
output "ec_instance" {
  value = aws_instance.web01.public_ip
}
