module "ec2_instance" {
  source          = "./account-1/"
}

module "s3" {
  source          = "./account-2/"
}