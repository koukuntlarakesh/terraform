variable "ec2_ami" {
  type        = string
  default     = "ami-0f3c7d07486cad139" 
  
}

variable "ec2_intance_type" {
  type        = string
  default     = "t2.small"
  
}

variable "sg_name" {

    type = string 
    default = "Roboshop-all-aws"
}

variable "sg_description" {

type = string 
default =" Security group allowing all"

}

variable "inbound_from_port" {

    type = number
    default = 0

}

variable "cidr_blocks" {

    type = list
    default = ["0.0.0.0/0"]
}
