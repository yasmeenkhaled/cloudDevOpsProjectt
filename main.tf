module "network" {
  source              = "./modules/network"
  project_name        = var.project_name
  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidr  = "10.0.1.0/24"
  availability_zone   = "us-east-1a"
}

module "server" {
  source             = "./modules/server"
  project_name       = var.project_name
  subnet_id          = module.network.public_subnet_id
  vpc_id             = module.network.vpc_id
  key_name           = var.key_name
  ami_id             = var.ami_id
  instance_type      = "t2.medium"
  private_key_path  = var.private_key_path                  # ← وأضف دي

}
