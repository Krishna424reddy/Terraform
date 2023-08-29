resource "aws_route_table" "public-subnet" {
  vpc_id = aws_vpc.default.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default.id
  }
  tags = {
    Name = "${var.vpc_name}-Public_RT"
  }
}

resource "aws_route_table" "private-subnet" {
  vpc_id = aws_vpc.default.id
  tags = {
    Name = "${var.vpc_name}-Private_RT"
  }
}

resource "aws_route_table_association" "public-subnet" {
  count          = 3
  subnet_id      = element(aws_subnet.public-subnets.*.id, count.index)
  route_table_id = aws_route_table.public-subnet.id
}

resource "aws_route_table_association" "terraform-public-2" {
  count          = 3
  subnet_id      = element(aws_subnet.private-subnets.*.id, count.index)
  route_table_id = aws_route_table.private-subnet.id
}
