resource "aws_security_group" "kgr-2-bastion-sg" {
  name        = "kgr-2-bastion-sg"
  description = "kgr-2-bastion-sg"
  vpc_id      = aws_vpc.kgr-2-vpc.id

  ingress {
    description      = "http 80"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "ssh 22"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "kgr-2-bastion-sg"
  }
}