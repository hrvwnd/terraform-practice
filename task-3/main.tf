provider "aws" {
  shared_credentials_file = "~/.aws/credential"
  region = "eu-west-2"
  version = "2.46.0"

}

resource "aws_instance" "EC2" {
  ami           = var.ami-id
  instance_type = var.instance-type
  key_name      = var.pem-key

}
