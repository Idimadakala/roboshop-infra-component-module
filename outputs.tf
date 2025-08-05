output "instance_details" {
    value = {
        private_ip = aws_instance.main.private_ip,
        instance_id = aws_instance.main.id,
        tags = aws_instance.main.tags
    }
}

output "aws_lb_listener_rule_details" {
    value = {
        arn = aws_lb_listener_rule.main.arn,
        priority = aws_lb_listener_rule.main.priority,
        tags = aws_lb_listener_rule.main.tags
    }
}