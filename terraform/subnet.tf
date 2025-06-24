resource "aws_subnet" "public_1_subnet" {
  vpc_id                  = aws_vpc.pavan_vpc.id
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true
  cidr_block              = "10.0.1.0/24"

  tags = {
    Name = "pavanpublic-1-subnet"
  }
}
resource "aws_subnet" "public_2_subnet" {
  vpc_id                  = aws_vpc.pavan_vpc.id
  availability_zone       = "us-east-2b"
  map_public_ip_on_launch = true
  cidr_block              = "10.0.2.0/24"

  tags = {
    Name = "pkpublic-1-subnet"
  }
}
resource "aws_subnet" "private_3_subnet" {
  vpc_id                  = aws_vpc.pavan_vpc.id
  availability_zone       = "us-east-2b"
  map_public_ip_on_launch = false
  cidr_block              = "10.0.3.0/24"

  tags = {
    Name = "vvsprivate-1-subnet"
  }
}
resource "aws_subnet" "private_4_subnet" {
  vpc_id                  = aws_vpc.pavan_vpc.id
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = false
  cidr_block              = "10.0.4.0/24"

  tags = {
    Name = "vvspkprivate-1-subnet"
  }
}