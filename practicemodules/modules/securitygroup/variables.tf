variable "SG_name" {
    type = string
    default = "SGtest"
}

variable "SG-description" {
    type = string
    default = "Allow all inbound traffic"
  
}

variable "inbound_from_port" {
  #type = string
  default = 0
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}
