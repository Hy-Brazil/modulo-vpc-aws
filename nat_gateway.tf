resource "aws_nat_gateway" "gw_nat" {
  subnet_id         = aws_subnet.subnet01.id
  allocation_id     = aws_eip.ip_elastico_nat_gateway.id

  tags = {
    Name       = "nat-gateway-${var.environment}"
    owner      = "romulo"
    managed-by = "terraform"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.internet_gateway]
}