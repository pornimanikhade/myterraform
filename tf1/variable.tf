variable "region" {
    type= string
    default = "us-east-2" 
}
variable "ami" {
    type= string
    default = "ami-08333bccc35d71140" 
}
variable "pub_ip" {
    type= bool
}

variable "key_pair" {
    type= string
}
variable "role" {
    type= string
    default = "s3fullacees" 
}

variable "tag" {
    type= map
    default = {
    name="old_tera-server"
    env="UAT"
    dept="dev"
    } 
}


