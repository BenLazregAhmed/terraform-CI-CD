resource "aws_instance" "web_app_server" {
  ami             = var.ami # Ubuntu 20.04 LTS // us-east-1
  instance_type   = var.instance_type
  security_groups = [aws_security_group.instances.name]
  user_data       = <<-EOF
              #!/bin/bash
              echo "Hello, World !!!" > index.html
              python3 -m http.server 8080 &
              EOF
}