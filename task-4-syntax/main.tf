provider "aws" {
  version                 = "~>2.0"
  region                  = "eu-west-2"
  shared_credentials_file = "~/.aws/credentials"
}

resource "aws_instance" "EC2" {
  ami           = "ami-0be057a22c63962cb"
  instance_type = "t2.micro"
  key_name      = "example"
}

