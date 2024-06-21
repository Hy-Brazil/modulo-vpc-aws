resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc-homo.id

  tags = {
    Name       = "internet-gateway-${var.environment}"
    Owner      = "romulo"
    Managed-by = "terraform"
    Environment = "homolog"
    Datadog = "false"
  }
}