resource "aws_nat_gateway" "pavan" {
  allocation_id = aws_eip.pavan.id
  subnet_id     = aws_subnet.public_2_subnet.id

  tags = {
    Name = "gw NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}
resource "aws_eip" "pavan" {

  domain = "vpc"
}