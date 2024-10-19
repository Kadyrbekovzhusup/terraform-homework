variable "region" {
    type = string
    default = "us-east-2"
}

variable "key_name" {
 type = string
 default = "my-key"
}
variable "availability_zone" {
    type = string
    default = "us-east-2a"
  
}

variable "port" {
    type = list
    default = [22, 80, 443]
}


variable "instance_type" {
    type = string
    default = "t2.micro"
}
 
variable "aws_ami" {
    type = string
    default = "ami-050cd642fd83388e4"
}

variable "instance_count" {
    type = number
    default = 1
}