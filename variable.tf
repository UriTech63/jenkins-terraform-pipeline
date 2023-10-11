variable "vpc_cidr_block" {
    default = "10.0.0.0/16"
    }
variable "subnet_cidr_block" {
    default = "10.0.1.0/24"
}
variable "avail_zone" {
    default = "us-east-1a"
}
# variable "env_prefix" {}
# variable "myip" {}
variable "instance-type" {
    default = "t2.micro"
}
# variable "public_key_location" {}
