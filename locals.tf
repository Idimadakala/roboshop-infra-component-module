locals {
  ami_id = data.aws_ami.catalogue.id
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  roboshop_private_subnet_ids = split(",",data.aws_ssm_parameter.roboshop_private_subnet_ids.value)
  #backend_alb_sg_id = data.aws_ssm_parameter.backend_alb_sg_id.value
  catalogue_sg_id = data.aws_ssm_parameter.catalogue_sg_id.value
  backend_alb_listener_arn = data.aws_ssm_parameter.backend_alb_listener_arn.value
  sg_id = data.aws_ssm_parameter.sg_id.value
  
    common_tags = {
        Project = var.project
        Environment = var.environment
        Terraform = true
    }
}