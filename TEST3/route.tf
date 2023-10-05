# IGW : vpc.tf/kgr-2-igw
# NGW : vpc.tf/kgr-2-ngw-2a

#kgr-2-public-rt

resource "aws_route_table" "kgr-2-public-rt" {
  vpc_id = aws_vpc.kgr-2-vpc.id
  tags = {
    Name = "kgr-2-rt-public-rt"
  }
}

resource "aws_route_table_association" "kgr-2-public-2a-association" {
  subnet_id      = aws_subnet.kgr-2-public-2a.id
  route_table_id = aws_route_table.kgr-2-public-rt.id
}

resource "aws_route_table_association" "kgr-2-public-2c-association" {
  subnet_id      = aws_subnet.kgr-2-public-2c.id
  route_table_id = aws_route_table.kgr-2-public-rt.id
}

resource "aws_route" "kgr-2-public-route-path" {
  route_table_id         = aws_route_table.kgr-2-public-rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.kgr-2-igw.id
}


#kgr-2-private-rt

resource "aws_route_table" "kgr-2-private-rt" {
  vpc_id = aws_vpc.kgr-2-vpc.id
  tags = {
    Name = "kgr-2-rt-private-rt"
  }
}

resource "aws_route_table_association" "kgr-2-private-2a-association" {
  subnet_id      = aws_subnet.kgr-2-private-2a.id
  route_table_id = aws_route_table.kgr-2-private-rt.id
}

resource "aws_route_table_association" "kgr-2-private-2c-association" {
  subnet_id      = aws_subnet.kgr-2-private-2c.id
  route_table_id = aws_route_table.kgr-2-private-rt.id
}

resource "aws_route" "kgr-2-private-route-path" {
  route_table_id         = aws_route_table.kgr-2-private-rt.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.kgr-2-ngw-2a.id
}
