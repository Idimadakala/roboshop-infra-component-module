variable "project" {
    default = "roboshop-infra"
  
}
variable "environment" {
  default = "dev"
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
  # provide the component name from the source module
}

variable "rule_priority" {
    # provide the rule priority value from the source module
}