locals {
  ami_id = data.aws_ami.catalogue.id
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  roboshop_private_subnet_ids = split(",",data.aws_ssm_parameter.roboshop_private_subnet_ids.value)
  #backend_alb_sg_id = data.aws_ssm_parameter.backend_alb_sg_id.value
  catalogue_sg_id = data.aws_ssm_parameter.catalogue_sg_id.value
  backend_alb_listener_arn = data.aws_ssm_parameter.backend_alb_listener_arn.value
  
  frontend_alb_listener_arn = data.aws_ssm_parameter.frontend_alb_listener_arn.value
  sg_id = data.aws_ssm_parameter.sg_id.value
  alb_listener_arn = "${var.component}" == "frontend" ? local.frontend_alb_listener_arn : local.backend_alb_listener_arn
  tg_port = "${var.component}" == "frontend" ? 80 : 8080
  health_check_path = "${var.component}" == "frontend" ? "/" : "/health"
  rule_header_url = "${var.component}" == "frontend" ? "${var.environment}.${var.zone_name}" : "${var.component}.backend-${var.environment}.${var.zone_name}"

    common_tags = {
        Project = var.project
        Environment = var.environment
        Terraform = true
    }
}