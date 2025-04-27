resource "aws_vpc" "name" {
  cidr_block = var.vpc_cidar
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = {
      Name = var.vpc_name
    }
}