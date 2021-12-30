resource "aws_ebs_volume" "vol1" {
  availability_zone = var.availability_zone01
  depends_on        = [aws_instance.web01]
  size              = 5
}
