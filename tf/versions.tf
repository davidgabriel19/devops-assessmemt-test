terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.26.0"
    }
  }
  required_version = ">= 0.13"
}
