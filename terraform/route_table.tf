resource "aws_route_table" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name        = "my-project-rt"
    Environment = "dev"
  }
}