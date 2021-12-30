resource "aws_volume_attachment" "ebs_attach_1" {
  depends_on  = [aws_ebs_volume.vol1]
  device_name = "/dev/sdh"
  instance_id = aws_instance.web01.id
  volume_id   = aws_ebs_volume.vol1.id
}
