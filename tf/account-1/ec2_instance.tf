resource "aws_instance" "ec2"{
  count                  = var.number_instances
  ami                    = var.ami
  instance_type          = var.instance_type
  monitoring             = true
  vpc_security_group_ids = [var.sg_id]
  subnet_id              = var.subnet
  tags = var.tags
}

resource "aws_security_group" "sg-default" {
  name        = join("-", ["ec2", var.ec2_name])
  vpc_id      = var.vpc_id
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
}

resource "aws_subnet" "private" {
  for_each = var.private_subnet_numbers
 
  vpc_id            = var.vpc_id
  availability_zone = each.key
 
  cidr_block = cidrsubnet(aws_vpc.vpc.cidr_block, 4, each.value)
}