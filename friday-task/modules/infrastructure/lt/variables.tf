variable "name_prefix" {
    default = "nfx"
    description = ""
}

variable "image_id" {
    description = "ubuntu image for insert region"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "aws_wsg_id" {

}

variable "public_subnet_id" {

}

variable "environment" {
}
variable "region" {
}