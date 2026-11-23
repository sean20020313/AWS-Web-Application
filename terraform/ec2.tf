# 查詢 Amazon Linux 2023 AMI
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}


resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"

  subnet_id = aws_subnet.private_a.id

  vpc_security_group_ids = [
    aws_security_group.ec2.id
  ]

  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  associate_public_ip_address = false

  user_data = <<-EOF
    #!/bin/bash

    mkdir -p /var/www/html

    cat > /var/www/html/index.html <<'HTML'
    <html>
      <head>
        <title>My AWS Terraform Project</title>
      </head>
      <body>
        <h1>Hello from AWS EC2!</h1>
        <p>My first Terraform Web Application.</p>
      </body>
    </html>
    HTML

    cd /var/www/html
    nohup python3 -m http.server 80 --bind 0.0.0.0 > /var/log/web-server.log 2>&1 &
  EOF

  tags = {
    Name        = "${var.project_name}-web-server"
    Environment = var.environment
  }
}