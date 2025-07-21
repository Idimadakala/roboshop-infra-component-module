output "instance_details" {
    value = {
        private_ip = aws_instance.main.private_ip,
        instance_id = aws_instance.main.id,
        tags = aws_instance.main.tags
    }
  
}