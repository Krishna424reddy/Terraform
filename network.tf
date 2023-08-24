resource "aws_vpc" "default" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id
  tags = {
    Name = "${var.vpc_name}-IGW"
  }
}

resource "aws_subnet" "subnet-1-public" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.public_subnet1_cidr
  availability_zone = "ap-south-1a"
  tags = {
    Name = "${var.vpc_name}-public_subnet_1"
  }
}

resource "aws_subnet" "subnet-2-public" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.public_subnet2_cidr
  availability_zone = "ap-south-1b"
  tags = {
    Name = "${var.vpc_name}-public_subnet_2"
  }

}

resource "aws_subnet" "subnet-3-public" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.public_subnet3_cidr
  availability_zone = "ap-south-1c"
  tags = {
    Name = "${var.vpc_name}-public_subnet_3"
  }
}