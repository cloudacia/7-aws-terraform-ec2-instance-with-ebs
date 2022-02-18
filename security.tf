###############################################
#  AWS SECURITY GROUP FOR EC2 INSTANCES       #
###############################################
resource "aws_security_group" "web_and_ssh" {
  name        = "web_and_ssh"
  description = "Allow web incgress trafic"
  vpc_id      = aws_vpc.development.id

  # http port
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # ssh port
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Open access to public network
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Development"
  }
}
