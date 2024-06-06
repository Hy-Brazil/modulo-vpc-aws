resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.vpc-homo.id

  route {
    cidr_block = var.route_table_igw
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags = {
    Name       = "route-table-${var.environment}"
    owner      = "romulo"
    managed-by = "terraform"
  }
}

/*resource "aws_route_table" "route_table2" {
  vpc_id = aws_vpc.vpc-homo.id

  route {
    cidr_block = var.route_table_nat_gw
    gateway_id = aws_nat_gateway.gw_nat.id
  }

  tags = {
    Name       = "route-table2-${var.environment}"
    owner      = "romulo"
    managed-by = "terraform"
  }
}*/


resource "aws_route_table_association" "rta1" {
  subnet_id      = aws_subnet.subnet01.id
  route_table_id = aws_route_table.route_table.id
}

resource "aws_route_table_association" "rta2" {
  subnet_id      = aws_subnet.subnet02.id
  route_table_id = aws_route_table.route_table.id
}

resource "aws_route_table_association" "rta3" {
  subnet_id      = aws_subnet.subnet03.id
  route_table_id = aws_route_table.route_table.id
}

resource "aws_route_table_association" "rta4" {
  subnet_id      = aws_subnet.subnet04.id
  route_table_id = aws_route_table.route_table2.id
}