# joindevops ami_id
data "aws_ami" "joindevops" {
  owners           = ["973714476881"]
  most_recent      = true

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

#fetch our roboshop vpc_id
data "aws_ssm_parameter" "vpc_id" {
    name = "/${var.project}/${var.environment}/vpc_id"
}

#fetch our roboshop-infra VPC Private subnets
data "aws_ssm_parameter" "roboshop_private_subnet_ids"{
    name = "/${var.project}/${var.environment}/roboshop_private_subnet_ids"
}

data "aws_ssm_parameter" "sg_id" {
    name = "/${var.project}/${var.environment}/${var.component}_sg_id"
}

# fetch the backend alb arn
data "aws_ssm_parameter" "backend_alb_listener_arn" {
    name = "/${var.project}/${var.environment}/backend_alb_listener_arn"
}

# fetch the frontend alb arn
data "aws_ssm_parameter" "frontend_alb_listener_arn" {
    name = "/${var.project}/${var.environment}/frontend_alb_listener_arn"
}