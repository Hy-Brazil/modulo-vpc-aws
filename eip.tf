resource "aws_eip" "ip_elastico_nat_gateway" {
  domain = "vpc"

  tags = {
    Name       = "ip-nat-gateway"
    owner      = "romulo"
    managed-by = "terraform"
  }

}