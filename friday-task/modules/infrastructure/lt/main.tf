resource "aws_launch_template" "asg_lt" {
  name_prefix   = var.name_prefix
  image_id      = var.image_id
  instance_type = var.instance_type
  #subnet_id = var.public_subnet_id
  vpc_security_group_ids = [var.aws_wsg_id]
  tags = {
    Name = "${var.environment}-${var.region}-Public"
  }
}