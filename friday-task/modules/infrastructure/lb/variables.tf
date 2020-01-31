
variable "internal" {
    default = false
}

variable "load_balancer_type" {
    default = "application"
}

variable "aws_wsg_id" {
    
}

variable "public_subnet_id" {

}

variable "public_subnet_ids" {
    type = list(string)

}

variable "igw_id" {
    
}


variable "environment" {
}
variable "region" {
}
