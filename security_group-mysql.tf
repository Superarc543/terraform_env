## 安全組 MySql (DB)
resource "aws_security_group" "sg-mysql" {
  name        = "service-sg-mysql"
  description = "sg-mysql (DB)"
  vpc_id      = aws_vpc.production.id

  ingress {
    description = "Allow-VPC-3306"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["10.1.0.0/16"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "sg-mysql"
  }
}
