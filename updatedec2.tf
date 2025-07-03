# Uodated EC2 Instance
resource "aws_instance" "my_greatec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.Backoff_securitygroup.id]  # Link new SG

  tags = {
    Name = var.instance_tag
  }
}