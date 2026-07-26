module "hub" {
  source = "./modules/hub"
}

module "spoke" {
  source = "./modules/spoke"
}

module "ram" {
  source = "./modules/ram"
}