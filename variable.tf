variable "region" {
    type= string
    default = "us-west-1" 
}
variable "ami" {
    type= string
    default = "ami-051ed863837a0b1b6" 
}
variable "pub_ip" {
    type= bool
    default="true"
}

variable "key_pair" {
    type= string
    default="key"
}
variable "role" {
    type= string
    default = "s3fullacees" 
}

variable "tag" {
    type= map
    default = {
    name="pornima-server"
    env="UAT"
    dept="dev"
    } 
}


