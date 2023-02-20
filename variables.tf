variable "aws_access_key" {
  type = string
  description = "aws access key"
  sensitive = true
}
variable "aws_secret_key" {
  type = string
  description = "aws secret key"
  sensitive = true
}
variable "aws_region" {
  type = string
  description = "AWS region to use for resources"
  default = "us-east-1"
}
variable "vpc_cidr_block" {
    type = string
    description = "enable DNS hostnames in vpc"
    default = true
}
variable "vpc_subnets_cidr_block" {
  type = list(string)
  description = "CIDR blocks in vpc"
  default = ["10.0.0.0/24", "10.0.1.0/24"]
}
variable "map_public_ip_on_launch" {
  type = bool
  description = "map a public ip address for subnet instances"
  default = true
}
variable "instance_type" {
  type = string
  description = "Type for ec2 instance"
  default = "t2.micro"
}
variable "company" {
  type = string
  description = "Globomantics"
}
variable "project" {
  type = string
  description = "project name for resource tagging"
}
variable "billing_code" {
  type = string
  description = "billing code for resource tagging"
}