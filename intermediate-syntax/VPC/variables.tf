variable "vpc-cidr-block" {
  description = "CIDR block for VPC"
  default     = "172.31.0.0/16"
}

variable "pub-snA-cidr-block" {
  description = "CIDR block for Public Subnet A"
  default     = "172.31.32.0/20"
}
