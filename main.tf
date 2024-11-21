# Create a Public EC2 instance
resource "aws_instance" "server1" {
  ami             = var.ami-id # Replace with the desired AMI ID
  instance_type   = var.instancetype
  key_name        = var.ec2key # Replace with your SSH key pair name
  subnet_id       = aws_subnet.public_subnet.id
  security_groups = [aws_security_group.secgroup.id]

  associate_public_ip_address = true # This instance will have a public IP

  tags = {
    Name = "Public-EC2"
  }
}

# Create a Private EC2 instance
resource "aws_instance" "server" {
  ami             = var.ami-id # Replace with the desired AMI ID
  instance_type   = var.instancetype
  key_name        = var.ec2key # Replace with your SSH key pair name
  subnet_id       = aws_subnet.private_subnet.id
  security_groups = [aws_security_group.secgroup.id]

  tags = {
    Name = "Private-EC2"
  }
}


