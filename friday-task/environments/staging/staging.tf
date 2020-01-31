#FRANCE
variable "region" {

}

variable "shared_credentials_file" {

}

variable "environment" {

} 
variable "ami_id" {

}

variable "availability_zones" {
    type        = list(string)
    
}

provider "aws" {
    region = var.region
    version = "~> 2.7"
    shared_credentials_file = var.shared_credentials_file

}

module "infrastructure" {
    source = "../../modules/infrastructure"
    environment = var.environment
    region = var.region
    ami_id = var.ami_id

}