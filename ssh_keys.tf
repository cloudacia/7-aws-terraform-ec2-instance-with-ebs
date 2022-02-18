###############################################
# Public Key for accessing EC2 instances      #
###############################################
resource "aws_key_pair" "user_key" {
  key_name   = "user-key"
  public_key = var.ssh_public_key

  tags = {
    Name = "Development"
  }
}
