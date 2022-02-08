output "account_id" {
  value = local.account_id
}

resource "aws_s3_bucket" "tf-state" {
  bucket = "tf-state-david-{local.accout_id}-account-2"
  acl    = "private"
  policy = file("policy.json")  
}