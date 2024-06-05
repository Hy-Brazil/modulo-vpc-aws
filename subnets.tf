resource "aws_subnet" "subnet01" {
  vpc_id            = aws_vpc.vpc-homo.id
  cidr_block        = var.cidr_subnet1
  availability_zone = "us-east-1a"

  tags = {
    Name = "subnet01-${var.environment}"
  }
}

resource "aws_subnet" "subnet02" {
  vpc_id            = aws_vpc.vpc-homo.id
  cidr_block        = var.cidr_subnet2
  availability_zone = "us-east-1b"

  tags = {
    Name = "subnet02-${var.environment}"
  }
}

resource "aws_subnet" "subnet03" {
  vpc_id            = aws_vpc.vpc-homo.id
  cidr_block        = var.cidr_subnet3
  availability_zone = "us-east-1c"

  tags = {
    Name       = "subnet03-${var.environment}"
    owner      = "romulo"
    managed-by = "terraform"
  }
}

resource "aws_subnet" "subnet04" {
  vpc_id            = aws_vpc.vpc-homo.id
  cidr_block        = var.cidr_subnet4
  availability_zone = "us-east-1a"

  tags = {
    Name       = "subnet04-prv-${var.environment}"
    owner      = "romulo"
    managed-by = "terraform"
  }
}

resource "aws_subnet" "subnet05" {
  vpc_id            = aws_vpc.vpc-homo.id
  cidr_block        = var.cidr_subnet5
  availability_zone = "us-east-1b"

  tags = {
    Name       = "subnet05-prv-${var.environment}"
    owner      = "romulo"
    managed-by = "terraform"
  }
}

resource "aws_subnet" "subnet06" {
  vpc_id            = aws_vpc.vpc-homo.id
  cidr_block        = var.cidr_subnet6
  availability_zone = "us-east-1c"

  tags = {
    Name       = "subnet06-prv-${var.environment}"
    owner      = "romulo"
    managed-by = "terraform"
  }
}