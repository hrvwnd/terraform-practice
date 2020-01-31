resource "aws_subnet" "public_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = "10.0.0.0/24"
  availability_zone = var.availability_zonea
  tags = {
    Name = "${var.region}-${var.environment}-Public-Subnet"
  }
}

resource "aws_subnet" "public_subnet2" {
  vpc_id     = var.vpc_id
  cidr_block = "10.0.2.0/24"
  availability_zone = var.availability_zoneb
  tags = {
    Name = "${var.region}-${var.environment}-Public-Subnet2"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "${var.region}-${var.environment}-Private-Subnet"
  }    
}