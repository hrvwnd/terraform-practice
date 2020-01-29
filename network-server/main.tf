provider "aws" {
  shared_credentials_file = "~/.aws/credential"
  region                  = "eu-west-2"
  version                 = "2.46.0"
}


resource "aws_vpc" "DefaultVPC-tf" {
  cidr_block = "172.16.0.0/16"
  tags = { Name = "default VPC-tf"
  }
}


resource "aws_subnet" "my_subnet" {
  vpc_id            = "${aws_vpc.DefaultVPC-tf.id}"
  cidr_block        = "172.16.10.0/24"
  availability_zone = "eu-west-2a"

  tags = {
    Name = "tf-example"
  }
}


resource "aws_network_interface" "networkInterface" {
  subnet_id   = "${aws_subnet.my_subnet.id}"
  private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.DefaultVPC-tf.id}"

  tags = {
    Name = "main"
  }
}


resource "aws_route_table" "r" {
  vpc_id = "${aws_vpc.my_vpc.id}"
  rotue {
    cidr_block = ""
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
  route {
    pv6_cidr_block         = "::/0"
    egress_only_gateway_id = "${aws_egress_only_internet_gateway.foo.id}"
  }
  tags = {
    Name = "main"
  }
}


resource "aws_instance" "terraform-test" {
  ami             = var.ami-id
  instance_type   = var.instance-type
  key_name        = var.pem-key
  security_groups = var.secrurity_group
  network_interface {
    network_interface_id = "${aws_network_interface.foo.id}"
    device_index         = 0
  }

  tags = {
    Name = "terraformIsGreat"
  }

}
