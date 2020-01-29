provider "aws" {
  version                 = "~>2.0"
  region                  = "eu-west-2"
  shared_credentials_file = "~/.aws/credentials"
}

resource "aws_instance" "EC2" {
  ami           = var.ami-id
  instance_type = var.instance-type
  key_name      = var.pem-key

}

resource "aws_s3_bucket" "b" {
	bucket = "an-s3-bucket-23u8489234"
	acl = "private"
	tags = {
		Name = "an-s3-bucket"
		Environment = "Dev"
	}
}
