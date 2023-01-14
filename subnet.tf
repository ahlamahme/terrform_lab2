resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.subnet_cidr
  availability_zone = var.zone
  map_public_ip_on_launch = "true" 
  tags = {
    Name = "public"

  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.subnet_cidr_pv
  availability_zone = var.zone
  map_public_ip_on_launch = "false" 
  tags = {
    Name = "private"

  }
}