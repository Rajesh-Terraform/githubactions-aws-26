resource "aws_vpc" "hub" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "Hub-VPC"
  }
}