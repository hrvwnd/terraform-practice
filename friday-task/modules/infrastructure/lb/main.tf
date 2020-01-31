resource "aws_lb" "lb" {
  internal           = var.internal
  load_balancer_type = var.load_balancer_type
  security_groups    = var.aws_wsg_id
  subnets            = var.public_subnet_ids
  depends_on         = [var.igw_id]
  tags = {
    Name = "${var.environment}-${var.region}-Public"
  }
}

