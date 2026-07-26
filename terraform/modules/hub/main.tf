module "hub" {
  source = "./modules/hub"

  vpc_cidr = var.hub_vpc_cidr
}