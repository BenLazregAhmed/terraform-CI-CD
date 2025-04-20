output "web_server_ip_addr" {
  value = aws_instance.web_app_server.public_ip
}
