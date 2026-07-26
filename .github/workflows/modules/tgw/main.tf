resource "aws_ec2_transit_gateway" "this" {

  description = var.description

  amazon_side_asn = var.amazon_side_asn

  default_route_table_association = "disable"

  default_route_table_propagation = "disable"

  auto_accept_shared_attachments = "enable"

  tags = {
    Name = var.name
  }
   
}    