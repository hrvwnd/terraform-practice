variable "availability_zones" {
    type = list(string)
    description = "list of availability zones"
}

variable "desired_capacity" {
    default = 1
}

variable "max_size" {
    default = 3
}

variable "min_size" {
    default = 1
}

variable "aws_lb_id" {

}

variable "asg_lt_id" {

}

variable "environment" {
}
variable "region" {
}