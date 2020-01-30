variable "ubuntu-ami" {
  description = "default ubuntu ami"
  default     = "ami-0be057a22c63962cb"
}

variable "instance-type" {
  default = "t2.micro"
}

variable "subnet_id" {
  description = ""
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = ""
}

variable "tags" {
  description = ""
}

variable "associate_public_ip_address" {
  description = ""
}

variable "pem-key" {
  default = "ExampleInstance"
  description = ""
}