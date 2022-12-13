
resource "aws_instance" "ec2" {
  ami                         = var.ami
  instance_type                        = var.ec2_type
  associate_public_ip_address = true
  security_groups             = ["launch-wizard-2"]
  user_data                   = file("${path.module}/user_data.sh")
  key_name = "dev-ops"
  tags = {
    Name = "Jenkins-server"
  }
}