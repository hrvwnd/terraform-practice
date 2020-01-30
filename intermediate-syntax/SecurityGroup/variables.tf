variable "ingress_ports" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [22, 80, 443]
}

variable "name" {
  description= "name"
}

variable "vpc_id" {
  description = "vpc_id"
}

variable "outbound-port" {
  default = 0
  description = ""
}

variable "open-internet" {
  default = ["0.0.0.0/0"]
  description = ""
}