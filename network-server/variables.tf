variable "VPC" {
  description = "default VPC"
  default     = "vpc-30b2ce58"
}

variable "subneta" {
  description = "default subnet a"
  default     = "subnet-0f6813ce6c4a7c2e4"
}

variable "routetable" {
  description = "default route-table"
  default     = "rtb-20ae8748"
}

variable "internetgateway" {
  description = "default internet gateway"
  default     = "igw-3407e05c"
}

variable "ami-id" {
  description = "AMI ID of ubuntu 18.04LTS eu-west-2"
  default     = "ami-0be057a22c63962cb"
}

variable "instance-type" {
  description = "Free tier EC2 Instance type"
  default     = "t2.micro"
}

variable "pem-key" {
  description = "Associated Key to SSH into the EC2 Instance"
  default     = "ExampleInstance"
}



