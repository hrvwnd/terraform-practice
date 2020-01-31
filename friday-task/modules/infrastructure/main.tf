module "vpc" {
    source = "./vpc"
    environment = var.environment
    region = var.region
}

module "autoscaling_group" {
    source = "./asg"
    environment = var.environment
    region = var.region
    availability_zones = var.availability_zones
    aws_lb_id = module.loadbalencer.aws_lb_id
    asg_lt_id      = module.launch_template.asg_lt_id
}

module "subnets" {
    source = "./subnets"
    environment = var.environment
    region = var.region
    vpc_id = module.vpc.vpc_id
    availability_zonea = var.availability_zonea
    availability_zoneb = var.availability_zoneb
}

module "security_group" {
    source = "./sg"
    environment = var.environment
    region = var.region
    vpc_id = module.vpc.vpc_id
}

module "launch_template" {
    source = "./lt"
    environment = var.environment
    region = var.region
    image_id = var.ami_id
    public_subnet_id = module.subnets.public_subnet_id
    aws_wsg_id = module.security_group.aws_wsg_id
}

module "loadbalencer" {
    source = "./lb"
    environment = var.environment
    region = var.region
    aws_wsg_id = [module.security_group.aws_wsg_id]
    public_subnet_id = module.subnets.public_subnet_id
    public_subnet_ids = module.subnets.public_subnet_ids
    igw_id = module.internet_gateway.igw_id
}

module "internet_gateway" {
    source = "./igw"
    environment = var.environment
    region = var.region
    vpc_id = module.vpc.vpc_id
}