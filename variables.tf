variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.100.0.0/16"
}

variable "vpc_name" {
  default = "company-main-vpc"
}

variable "public_subnet_1_cidr" {
  default = "10.100.1.0/24"
}

variable "public_subnet_2_cidr" {
  default = "10.100.2.0/24"
}

variable "az1" {
  default = "us-east-1a"
}

variable "az2" {
  default = "us-east-1b"
}
