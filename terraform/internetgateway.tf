resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.pavan_vpc.id


  tags = {
    Name = "pavan-internet-gateway"
  }
}