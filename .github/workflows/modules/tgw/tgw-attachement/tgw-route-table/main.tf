  module "tgw" {

  source = "../../modules/tgw"

  name = "Enterprise-TGW"

  description = "Hub Transit Gateway"

}

module "ram" {

  source = "../../modules/ram-share"

  name = "TGW-SHARE"

  tgw_arn = module.tgw.tgw_arn

  account_id = "434097521299"

}


module "hub_attachment" {

  source = "../../modules/tgw-attachment"

  name = "Hub"

  tgw_id = module.tgw.tgw_id

  vpc_id = module.hub.vpc_id

  subnet_ids = [
    module.hub.private_subnet
  ]

}    


