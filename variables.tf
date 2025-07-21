variable "project" {
    default = "roboshop-infra"
  
}
variable "environment" {
  default = "dev"
}

variable "target_group_name" {
  default = "catalogue-tg"
}

variable "target_group_port" {
  default = 8080
}

variable "instance_type" {
  default = "t3.micro"
}

variable "zone_id" {
  default = "Z03703982MKCR7DNXKOPG"
}

variable "zone_name" {
  default = "jsprajampeta.org"
}

variable "component" {

}