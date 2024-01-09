variable "ami" {
  type = string
  default = "ami-03265a0778a880afb"
}

variable "instance_type" {
  type = string
  default = "t2.small"
}

variable "tags" {
  default = {
    Name = "ec2"
    terraform = "true"
    environment = "dev"
  }
  type = map
}