variable "db_name" {}
variable "instance_class" {}
variable "db_user" {}
variable "db_pass" {}
variable "multi_az" {
    type = bool
    default = false
}