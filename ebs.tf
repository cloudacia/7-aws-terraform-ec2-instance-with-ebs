###############################################
#  AWS EBS VOLUME                             #
###############################################
resource "aws_ebs_volume" "vol1" {
  availability_zone = var.availability_zone01
  size              = 5
}

###############################################
#  AWS EBS ATTACHMENT                         #
###############################################
resource "aws_volume_attachment" "ebs_attach_1" {
  depends_on  = [aws_ebs_volume.vol1]
  device_name = var.ebs_device_name
  instance_id = aws_instance.web01.id
  volume_id   = aws_ebs_volume.vol1.id
}
