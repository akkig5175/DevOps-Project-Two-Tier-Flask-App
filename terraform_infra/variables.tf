variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  default = "flaskapp"
}

variable "ami_id" {
  # Ubuntu 22.04 LTS Mumbai region
  default = "ami-087d1c9a513324697"
}
