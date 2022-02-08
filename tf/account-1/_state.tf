// s3 bucket to persist state
terraform {
  backend "s3" {
    bucket = "tf-state-david-{var.accout_id}-account-2"
    region = "sa-east-1"
    key    = "states/{var.accout_id}.tfstate"
  }
}