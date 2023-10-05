resource "aws_vpc" "kgr-2-vpc" {
  cidr_block       = "10.20.0.0/16"

  tags = {
    Name = "kgr-2-vpc"
  }
}

resource "aws_subnet" "kgr-2-public-2a" {
  vpc_id            = aws_vpc.kgr-2-vpc.id
  cidr_block        = "10.20.1.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "kgr-2-public-2a"
  }
}

resource "aws_subnet" "kgr-2-public-2c" {
  vpc_id            = aws_vpc.kgr-2-vpc.id
  cidr_block        = "10.20.2.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "kgr-2-public-2c"
  }
}

resource "aws_subnet" "kgr-2-private-2a" {
  vpc_id            = aws_vpc.kgr-2-vpc.id
  cidr_block        = "10.20.3.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "kgr-2-private-2a"
  }
}

resource "aws_subnet" "kgr-2-private-2c" {
  vpc_id            = aws_vpc.kgr-2-vpc.id
  cidr_block        = "10.20.4.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "kgr-2-private-2c"
  }
}

resource "aws_internet_gateway" "kgr-2-igw" {
  vpc_id = aws_vpc.kgr-2-vpc.id
  tags = {
    Name = "kgr-2-igw"
  }
}

resource "aws_nat_gateway" "kgr-2-ngw-2a" {
  allocation_id = aws_eip.kgr-2-ngw-eip.id
  subnet_id     = aws_subnet.kgr-2-public-2a.id

  tags = {
    Name = "kgr-2-ngw-2a"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.kgr-2-igw]
}

resource "aws_eip" "kgr-2-ngw-eip" {
  domain   = "vpc"
  
  tags = {
    Name = "kgr-2-ngw-eip"
  }
}

