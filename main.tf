module "vpc" {
  source = "./modules/vpc"
}

module "s3_bucket" {
  source = "./modules/s3"

  depends_on = [
    module.vpc
  ]
}

module "ec2_instance" {
  source = "./modules/ec2"

  subnet_id = module.vpc.subnet_id

  depends_on = [
    module.s3_bucket
  ]
}
