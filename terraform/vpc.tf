# Create a VPC
resource "aws_vpc" "pavan_vpc" {
  tags = {
    Name = "pavan-vpc"
  }
  cidr_block = "10.0.0.0/16"
}