resource "aws_subnet" "public-subnets" {
  count             = 3
  vpc_id            = aws_vpc.default.id
  cidr_block        = element(var.public_subnet_cidrs, count.index)
  availability_zone = element(var.azs, count.index)
  tags = {
    Name = "${var.vpc_name}-public_subnet-${count.index + 1}"
  }
}

resource "aws_subnet" "private-subnets" {
  count             = 3
  vpc_id            = aws_vpc.default.id
  cidr_block        = element(var.private_subnet_cidrs, count.index)
  availability_zone = element(var.azs, count.index)
  tags = {
    Name = "${var.vpc_name}-private_subnet-${count.index + 1}"
  }
}