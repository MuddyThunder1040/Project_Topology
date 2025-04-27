provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source    = "./modules/vpc"
  vpc_cidr  = var.vpc_cidr
  vpc_name  = var.vpc_name
}

module "subnet" {
  source               = "./modules/subnet"
  vpc_id               = module.vpc.vpc_id
  vpc_name             = var.vpc_name
  public_subnet_1_cidr = var.public_subnet_1_cidr
  public_subnet_2_cidr = var.public_subnet_2_cidr
  az1                  = var.az1
  az2                  = var.az2
}
module "igw" {
  source    = "./modules/igw"
  vpc_id    = module.vpc.vpc_id
  igw_name  = "Project-IGW"
}
