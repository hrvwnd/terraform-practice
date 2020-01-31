resource "aws_autoscaling_group" "asg" {
  availability_zones = var.availability_zones
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size
  load_balancers     = [var.aws_lb_id]
  launch_template {
    id      = var.asg_lt_id
    version = "$Latest"
  }

}
