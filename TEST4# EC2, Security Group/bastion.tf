resource "aws_instance" "kgr-2-bastion" {
    ami           = "ami-02288bc8778f3166f"
    instance_type = "t3.micro"

    subnet_id   = aws_subnet.kgr-2-public-2a.id

    security_groups = [aws_security_group.kgr-2-bastion-sg.id]

    private_ip = "10.20.1.100"
    associate_public_ip_address = true

    tags = {
    Name = "kgr-2-Bastion"
    }
}