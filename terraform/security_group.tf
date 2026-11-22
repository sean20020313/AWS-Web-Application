resource "aws_security_group" "alb" {
  name        = "${var.project_name}-alb-sg"
  description = "Security Group for Application Load Balancer"
  vpc_id      = aws_vpc.main.id


  ingress {
    description = "Allow HTTP traffic"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "ec2"{
  name = "{var.project_name}-ec2-sg"
  description = "Security Group for ec2"
  vpc_id = aws_vpc.main.id
} 