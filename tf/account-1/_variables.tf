variable region {
  type = string
  default = "us-east-2"
}

variable instance_type {
  type = string
  default = "t2.micro"
}

variable tags {
  type    = map(string)
  default = {}
}

variable ec2_name {
  type    = string
  default = "t2-micro"
}

variable ip_ranges {
  type = list(string)
}

variable "private_subnet_numbers" {
  type = map(number)
 
  default = {
    "us-east-2a" = 4
    "us-east-2b" = 5
    "us-east-2c" = 6
  }
}


variable number_instances {
  type = number
  default = 1
}

variable ami {
  type = string
  default = "ami-0be2609ba883822ec"
}

variable subnet {
  type = string
  default = "subnet-608fe86e"
}

variable vpc_id {
  type = string
  default = "vpc-ce867fb3"
}

variable sg_id {
  type = string
  default = "sg-c7bbdefb"
}

variable "access_key" {
  default = "xxxxxx"
}

variable "secret_key" {
  default = "SkRxGX14WcEuaXcjbfu/GGatIsZQswBiRqba2w4uX"
}