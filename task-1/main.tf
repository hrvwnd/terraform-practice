provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "eu-west-2"
  version    = "2.46.0"
}

resource "aws_instance" "example" {
  ami           = "ami-0be057a22c63962cb"
  instance_type = "t2.micro"
}
