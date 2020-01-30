resource "aws_instance" "Instances" {
  ami                    = var.ubuntu-ami
  instance_type          = var.instance-type
  key_name               = var.pem-key
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  user_data = data.template_file.setup
  lifecycle {
    create_before_destroy = true
  }

  tags = var.tags

  associate_public_ip_address = var.associate_public_ip_address

}

data "template_file" "setup" {
  template = file("${/home/hrvwnd/Documents/terraform/intermediate-syntax/EC2/script.sh}"
  }


resource "aws_instance" "Instances2" {
  ami                    = var.amazon-linux-ami
  instance_type          = var.instance-type
  key_name               = var.pem-key
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "WebServer_Node2"
  }

  associate_public_ip_address = var.associate_public_ip_address
}
