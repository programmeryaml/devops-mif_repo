resource "aws_instance" "private_instance" {
  ami           = "ami-0c02fb55956c7d316" # Update this to a valid AMI for your region
  instance_type = "t3.small" # This is an example, choose an instance type that fits the CPU/memory requirement
  subnet_id     = aws_subnet.private_subnet.id
  security_groups = [aws_security_group.instance_sg.id]
  associate_public_ip_address = false
  tags = {
    Name = "my_private_instance"
  }
}