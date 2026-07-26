resource "aws_ram_resource_share" "this" {

  name = var.name

  allow_external_principals = true

}

resource "aws_ram_resource_association" "this" {

  resource_arn = var.tgw_arn

  resource_share_arn = aws_ram_resource_share.this.arn

}

resource "aws_ram_principal_association" "this" {

  principal = var.account_id

  resource_share_arn = aws_ram_resource_share.this.arn

}   