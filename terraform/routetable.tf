resource "aws_route_table" "pkpublic_route_table" {
  vpc_id = aws_vpc.pavan_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "pk-public-route-table"
  }
}
resource "aws_route_table" "pkprivate_route_table" {
  vpc_id = aws_vpc.pavan_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.pavan.id

  }

  tags = {
    Name = "pavan-private-route-table"
  }
}
resource "aws_route_table_association" "pkpublic_route_table_association_1" {
  subnet_id      = aws_subnet.public_1_subnet.id
  route_table_id = aws_route_table.pkpublic_route_table.id
}
resource "aws_route_table_association" "pkpublic_route_table_association_2" {
  subnet_id      = aws_subnet.public_2_subnet.id
  route_table_id = aws_route_table.pkpublic_route_table.id
}
resource "aws_route_table_association" "pkprivate_route_table_association_1" {
  subnet_id      = aws_subnet.private_3_subnet.id
  route_table_id = aws_route_table.pkprivate_route_table.id
}
resource "aws_route_table_association" "pkprivate_route_table_association_2" {
  subnet_id      = aws_subnet.private_4_subnet.id
  route_table_id = aws_route_table.pkprivate_route_table.id
}